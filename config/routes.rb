Rails.application.routes.draw do

  # Static page routes
  root  'static_pages#home'
  get   'help'      => 'static_pages#help'
  get   'about'     => 'static_pages#about'
  get   'contact'   => 'static_pages#contact'

  # User routes
  get   'signup'    => 'users#new'
  resources :users

  # Session routes
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

end
