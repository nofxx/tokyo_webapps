# Define a subclass of Ramaze::Controller holding your defaults for all
# controllers

class Controller < Ramaze::Controller
  layout :default
#  helper :Haml
#  engine :Haml
end

# Here go your requires for subclasses of Controller:
require 'controller/main'
require 'controller/notes'
