Rails.application.routes.draw do
  resources :user_comments
  resources :item_comments
  resources :characters
  resources :items
  resources :users
end
