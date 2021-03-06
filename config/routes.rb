ActionController::Routing::Routes.draw do |map|
  
  map.root :controller => 'home'
  
  map.home ':page', :controller => 'home', :action => 'show', :page => /about|contact/
    
  map.login '/login', :controller => "clearance/sessions", :action => "new"
  
  map.resources :users, :only => [:index, :show], :has_many => [:lists]
  
  map.resources :users do |users|
    users.resources :lists

    users.resource :password,
      :controller => 'clearance/passwords',
      :only       => [:create, :edit, :update]

    users.resource :confirmation,
      :controller => 'clearance/confirmations',
      :only       => [:new, :create]
  end
  
  map.resources :lists, :has_many => :items 
    
  map.resources :items

  # rake routes
  # http://guides.rubyonrails.org/routing.html
end
