Rails.application.routes.draw do
  # get 'chats/index'
  resources :chats, only: [:index]
  resources :user, only: [:new, :create]
  root 'user#new'

  mount ActionCable.server => '/cable'
end
