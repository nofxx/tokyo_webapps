require "dm-tokyo-adapter"
tyrant = { :adapter => 'tokyo_tyrant', :host => 'localhost', :port => '1978' }
cabinet = { :adapter  => 'tokyo_cabinet', :database => 'dmaria', :path => "/tmp/" } #File.dirname(__FILE__) }
adapter = true || ENV["TYRANT"] ? tyrant : cabinet
DataMapper.setup(:default, adapter)
#DataMapper.logger = Logger.new($stderr)

