Rails.application.routes.draw do
  get '/signup', to: 'users#new'
  
  root 'static_pages2#home'
  
  get '/help', to: 'static_pages2#help'
  get '/about', to: 'static_pages2#about'
  get '/contact', to: 'static_pages2#contact'
  
end
