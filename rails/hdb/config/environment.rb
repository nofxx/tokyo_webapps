RAILS_GEM_VERSION = '2.3.2' unless defined? RAILS_GEM_VERSION
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  # config.load_paths += %W( #{RAILS_ROOT}/extras )
  # config.gem "hpricot", :version => '0.6', :source => "http://code.whytheluckystiff.net"
  config.gem "dm-tokyotyrant-adapter"
  # config.gem "dm-core"
  # config.gem "json"

  # config.plugins = [ :exception_notification, :ssl_requirement, :all ]
  config.frameworks -= [ :active_record, :active_resource, :action_mailer ]
  # config.active_record.observers = :cacher, :garbage_collector, :forum_observer
  config.time_zone = 'UTC'
  # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}')]
  # config.i18n.default_locale = :de
end

#require "dm-tokyo-adapter"
tyrant = { :adapter => 'tokyo_tyrant', :database => 'table', :host => 'localhost', :port => '1978' }
#cabinet = { :adapter  => 'tokyo_cabinet', :database => 'dmaria', :path => "/tmp/" } #File.dirname(__FILE__) }
#pg = { :adapter => 'postgres', :database => 'dmaria_test', :user => 'postgres'}
#adapter = ENV["TYRANT"] ? tyrant : cabinet
DataMapper.setup(:default,tyrant) #tyrant) # adapter)
DataMapper.logger = Logger.new($stderr)#Rails.logger
