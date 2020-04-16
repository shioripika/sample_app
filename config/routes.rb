Rails.application.routes.draw do
  root 'static_pages2#home'
  
  get 'static_pages2/home'
  get 'static_pages2/help'
  get 'static_pages2/about'
  get 'static_pages2/contact'
 
end
