ActionController::Routing::Routes.draw do |map|
  map.resources :passwords,
    :controller => 'clearance/passwords',
    :only       => [:new, :create]

  map.resource  :session,
    :controller => 'clearance/sessions',
    :only       => [:new, :create, :destroy]

    map.resources :users do |users|
      users.resources :lists, 
        :controller => 'users', 
        :only => [:index, :show]

      users.resource :password,
        :controller => 'clearance/passwords',
        :only       => [:create, :edit, :update]

      users.resource :confirmation,
        :controller => 'clearance/confirmations',
        :only       => [:new, :create]
    end

  map.sign_up  'sign_up',
    :controller => 'clearance/users',
    :action     => 'new'
  map.sign_in  'sign_in',
    :controller => 'clearance/sessions',
    :action     => 'new'
  map.sign_out 'sign_out',
    :controller => 'clearance/sessions',
    :action     => 'destroy',
    :method     => :delete
end
