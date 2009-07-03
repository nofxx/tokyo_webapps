RAILS_GEM_VERSION = '2.3.2' unless defined? RAILS_GEM_VERSION
require File.join(File.dirname(__FILE__), 'boot')

#require "dm-tokyo-adapter"
#tyrant = { :adapter => 'tokyo_tyrant', :host => 'localhost', :port => '1978' }
#cabinet = { :adapter  => 'tokyo_cabinet', :database => 'dmaria', :path => "/tmp/" } #File.dirname(__FILE__) }
#pg = { :adapter => 'postgres', :database => 'dmaria_test', :user => 'postgres'}
#adapter = ENV["TYRANT"] ? tyrant : cabinet
#DataMapper.setup(:default,tyrant) #tyrant) # adapter)
#DataMapper.logger = Logger.new($stderr)#Rails.logger

Rails::Initializer.run do |config|
  # config.load_paths += %W( #{RAILS_ROOT}/extras )
  # config.plugins = [ :exception_notification, :ssl_requirement, :all ]

  #config.frameworks -= [ :active_record, :active_resource, :action_mailer ]
  #config.gem 'dm-core'
  # config.gem 'dm-aggregates'
  # config.gem 'do_sqlite3'
  config.gem 'tokyo_session_store'
  # config.active_record.observers = :cacher, :garbage_collector, :forum_observer
  config.time_zone = 'UTC'

  config.action_controller.session_store = :tokyo_store

  # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}')]
  # config.i18n.default_locale = :pt
end
