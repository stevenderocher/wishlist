ActionController::Routing::Routes.draw do |map|
  map.root :controller => "clearance/sessions", :action => "new"
  
  map.resources :users, :controller => 'users' do |users| 
    users.resource :lists,
      :controller => 'users',
      :only       => [:index, :show]
  end
  
  map.resources :users, :controller => 'clearance/users' do |users|
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
