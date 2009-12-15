ActionController::Routing::Routes.draw do |map|
  map.root :controller => "clearance/sessions", :action => "new"

  map.resources :lists, :has_many => :items 
  
  map.resources :users, :controller => "users", :has_many => :lists
  
  map.resources :items

  # rake routes
  # http://guides.rubyonrails.org/routing.html
end
