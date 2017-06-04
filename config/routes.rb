Rails.application.routes.draw do
  get 'rooms/show'

  root to: 'static_pages#home'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get 'signup' => 'users#new'
  get 'static_pages/help'
  resources :users
  resources :doctors

end
