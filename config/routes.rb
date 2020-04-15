Rails.application.routes.draw do
  get 'static_pages2/home'
  get 'static_pages2/help'
  get 'static_pages2/about'
  
  root 'application#hello'
  
end
