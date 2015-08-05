Rails.application.routes.draw do
  root "welcome#index"

  namespace :admin do
    resources :users, :destinations, :activities, :trips, :extras
  end

  get '/admin/dashboard', to: 'admin/dashboard#index'

  resources :users, only: [:new, :create]

  get "/trip", to: "trips#show"

  resources :activities, only: [:index, :show]

  resources :destinations, only: [:index, :show]

  # get '/cart_trips', to: 'cart_trips#index'

  get '/cart', to: 'cart_trips#index'

  post '/cart_trips', to: 'cart_trips#create'

  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy", as: "logout"

end
