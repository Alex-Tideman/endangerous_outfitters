Rails.application.routes.draw do
  root "welcome#index"

  resources :trips, only: [:index, :show, :create]

  namespace :admin do
    resources :users, :destinations, :activities, :trips, :extras
  end

  get '/admin/dashboard', to: 'admin/dashboard#index'

  resources :users, only: [:new, :create]

  resources :activities, only: [:index, :show]

  resources :destinations, only: [:index, :show]

  post '/cart_trips', to: 'cart_trips#create'

  get '/cart', to: 'cart_trips#index'

  get '/login', to: "sessions#new"

  post '/login', to: "sessions#create"

  delete '/logout', to: "sessions#destroy", as: "logout"

  resources :orders, only: [:new, :create, :index, :show]

end
