Rails.application.routes.draw do

  resources :users
  resources :carts
  resources :items
  resources :products
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end