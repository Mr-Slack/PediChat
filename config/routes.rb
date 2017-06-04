Rails.application.routes.draw do
  get '/portfolio',  to: 'portfolio#index'

  get '/chat',       to: 'rooms#show'

  root to: 'static_pages#home'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get 'signup' => 'users#new'
  get 'static_pages/help'
  resources :users
  resources :doctors

  mount ActionCable.server => '/cable'

end
