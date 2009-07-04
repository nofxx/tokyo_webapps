#
# Generic Monitor
#
RAILS_ROOT = File.dirname(File.dirname(__FILE__))
BIN_ROOT = "/usr/bin"


def generic_monitoring(w, options = {})
  w.start_if do |start|
    start.condition(:process_running) do |c|
      c.interval = 10.seconds
      c.running = false
    end
  end

  w.restart_if do |restart|
    restart.condition(:memory_usage) do |c|
      c.notify = {:contacts => ["nofxx"], :priority => 1, :category => "mem"}
      c.above = options[:memory_limit]
      c.times = [3, 5] # 3 out of 5 intervals
    end

    restart.condition(:cpu_usage) do |c|
      c.notify = {:contacts => ["nofxx"], :priority => 1, :category => "cpu"}
      c.above = options[:cpu_limit]
      c.times = 5
    end
  end

  w.lifecycle do |on|
    on.condition(:flapping) do |c|
      c.to_state = [:start, :restart]
      c.times = 5
      c.within = 5.minute
      c.transition = :unmonitored
      c.retry_in = 10.minutes
      c.retry_times = 5
      c.retry_within = 2.hours
    end
  end
end

#
#
# BackgrounDRB
#
God.watch do |w|
  w.name = "proj-tyrant"
  w.group = "proj"
  w.uid = "nofxx"
  w.gid = "users"
  w.interval = 30.seconds
  w.pid_file = "#{RAILS_ROOT}/tmp/pids/tyrant.pid"
  w.start = "ttserver -pid #{pid_file} -port 45001 data.tch"
  w.stop = "kill #{pid_file}"
  w.start_grace = 30.seconds
  w.restart_grace = 30.seconds

  w.behavior(:clean_pid_file)
  generic_monitoring(w, :cpu_limit => 80.percent, :memory_limit => 800.megabytes)
end

