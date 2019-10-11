Rails.application.routes.draw do
  resources :cart_bowties
  resources :carts
  resources :bowties
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
