# This file contains your application, it requires dependencies and necessary
# parts of the application.
#
# It will be required from either `config.ru` or `start.rb`

require 'rubygems'
require 'ramaze'

# Add the directory this file resides in to the load path, so you can run the
# app from any other working directory
$LOAD_PATH.unshift(__DIR__)

Ramaze.setup :verbose => true do
  #adapter "mongrel"
  gem "dm-tokyo-adapter"
end


# Initialize controllers and models
require 'model/init'
require 'controller/init'


Ramaze.start(:adapter => :mongrel, :mode => :dev) #if $0 == __FILE__
