Rails.application.routes.draw do
  root "welcome#index"

  namespace :admin do
    resources :users, :trips, :orders
  end

  get '/admin/dashboard', to: 'admin/dashboard#index'

  resources :users, only: [:new, :create, :edit, :update]

  resources :trips, only: [:index, :show]

  get '/profile', to: 'users#show'

  resources :activities, only: [:index, :show]

  resources :destinations, only: [:index, :show]

  post '/cart_trips', to: 'cart_trips#create'

  resources :cart_trips, only: [:create, :destroy] do
    member do
      post :increment, :decrement
    end
  end

  resources :reviews

  get '/cart', to: 'cart_trips#index'
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy", as: "logout"
  delete '/cart', to: 'cart_trips#destroy'

  resources :orders, only: [:new, :create, :index, :show]
end