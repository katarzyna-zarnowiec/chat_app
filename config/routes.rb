Rails.application.routes.draw do
  # get 'messages/index'
  # get 'sessions/new'
  # get 'sessions/create'
  resources :messages, only: [:index]
  resources :sessions, only: [:new, :create]

  root 'sessions#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
