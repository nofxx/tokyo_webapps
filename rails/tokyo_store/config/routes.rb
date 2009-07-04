ActionController::Routing::Routes.draw do |map|
  # Root home controller
  map.root :controller => 'home', :action => 'index'

  map.resources :items

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
