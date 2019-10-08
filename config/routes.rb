Rails.application.routes.draw do
  get 'chats/index'
  root 'chats#index'

  mount ActionCable.server => '/cable'
end
