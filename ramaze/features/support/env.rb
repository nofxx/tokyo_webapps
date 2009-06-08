# Ramaze Cucumber
require 'ramaze'
require 'webrat'
require 'ramaze/spec/bacon'
require File.join(File.dirname(__FILE__), *%w[.. .. start.rb])

#def app; Ramaze.middleware; end
Ramaze.setup_dependencies

Webrat.configure do |config|
  config.mode = :rack_test
end

World do
  extend Rack::Test::Methods
  extend Webrat::Methods
  extend Webrat::Matchers
end
