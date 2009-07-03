RAILS_GEM_VERSION = '2.3.2' unless defined? RAILS_GEM_VERSION
require File.join(File.dirname(__FILE__), 'boot')
require 'rack/cache'
Rails::Initializer.run do |config|
  # config.load_paths += %W( #{RAILS_ROOT}/extras )
  # config.plugins = [ :exception_notification, :ssl_requirement, :all ]

  #config.frameworks -= [ :active_record, :active_resource, :action_mailer ]
  #config.gem 'dm-core'
  # config.gem 'dm-aggregates'
  config.gem 'rack-cache', :lib => false

  config.middleware.use(Rack::Cache, :verbose => true,
          :metastore   => 'memcached://localhost:1978/meta',
          :entitystore => 'memcached://localhost:1978/body')

  # config.gem 'do_sqlite3'
  # config.gem 'rufus-tokyo'
  # config.gem 'tokyo_store' #, :lib => false
  # config.active_record.observers = :cacher, :garbage_collector, :forum_observer
  config.time_zone = 'UTC'

  # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}')]
  # config.i18n.default_locale = :pt
end
# ActionController::Base.session_store = Rack::Session::Tokyo
