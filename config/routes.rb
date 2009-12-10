ActionController::Routing::Routes.draw do |map|
  map.root :controller => "clearance/sessions", :action => "new"

  map.resources :lists

  # rake routes
  # http://guides.rubyonrails.org/routing.html
end
