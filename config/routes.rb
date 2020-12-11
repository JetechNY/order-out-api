Rails.application.routes.draw do
  resources :cart_items
  resources :favorites
  resources :menu_items
  resources :carts
  resources :restaurants
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
