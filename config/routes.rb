Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :cart_items
      resources :favorites
      resources :menu_items
      resources :carts
      resources :restaurants
      resources :users
    end
  end
end

  # namespace :api do
  #   namespace :v1 do
  #     get ‘/login’, to: “auth#spotify_request”
  #     get ‘/user’, to: “users#create”
  #     get ‘/profile’, to: “users#profile”
  #     patch ‘/user’, to: “users#update”
  #     resources :users
  #   end
  # end
  # end
