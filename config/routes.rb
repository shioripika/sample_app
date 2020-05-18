Rails.application.routes.draw do
  get 'password_resets/new'
 
  get 'password_resets/edit'
  
  root 'static_pages2#home'
  get '/help', to: 'static_pages2#help'
  get '/about', to: 'static_pages2#about'
  get '/contact', to: 'static_pages2#contact'
  get '/signup', to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
end
