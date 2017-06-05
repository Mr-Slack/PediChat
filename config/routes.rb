Rails.application.routes.draw do
  root to: 'static_pages#home'
  get '/portfolio',  to: 'portfolio#index'
  get '/chat',       to: 'rooms#show'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/signup',     to: 'users#new'

  resources :users
  resources :doctors

  mount ActionCable.server => '/cable'

end
