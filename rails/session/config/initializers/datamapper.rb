require "dm-core"
# require "dm-aggregates"
# require "dm-timestamps"
# require "dm-migrations"
# require "dm-validations"

DataMapper::Logger.new(STDOUT, :debug) # :off, :fatal, :error, :warn, :info, :debug
hash = YAML.load(File.new(RAILS_ROOT + "/config/database.yml"))
DataMapper.setup(:default, hash[Rails.env])

DataMapper.auto_migrate!
