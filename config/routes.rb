ActionController::Routing::Routes.draw do |map|
  map.root :controller => "clearance/sessions", :action => "new"
  
  map.resources :users, :controller => 'users', :only => [:index, :show], :has_many => [:lists]
  
  map.resources :users do |users|
    users.resources :lists, 
      :controller => 'users'
    
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
