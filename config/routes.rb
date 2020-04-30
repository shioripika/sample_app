Rails.application.routes.draw do
  root 'static_pages2#home'
  get '/help', to: 'static_pages2#help'
  get '/about', to: 'static_pages2#about'
  get '/contact', to: 'static_pages2#contact'
  get '/signup', to: 'users#new'
  post '/signup',  to: 'users#create'
  resources :users
end
