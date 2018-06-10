Rails.application.routes.draw do
  get 'home/index', as: 'foo'
  get 'chats/index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get 'hello', to: 'application#hello'
  resources :user_comments
  resources :item_comments
  resources :characters
  resources :items
  resources :users
  resources :articles
end
