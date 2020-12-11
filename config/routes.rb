Rails.application.routes.draw do
  resources :cart_items
  resources :favorites
  resources :menu_items
  resources :carts
  resources :restaurants
  resources :users
end
