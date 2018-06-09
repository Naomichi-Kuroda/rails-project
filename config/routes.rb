Rails.application.routes.draw do
  get 'home/index'
  get 'chats/index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :user_comments
  resources :item_comments
  resources :characters
  resources :items
  resources :users
end
