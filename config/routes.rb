Rails.application.routes.draw do
  root "welcome#index"

  namespace :admin do
    resources :users, :destinations, :activities, :trips, :extras
  end

  resources :users, only: [:show, :new, :create]

  get "/trip", to: "trips#show"

  resources :activities, only: [:index, :show]

  resources :destinations, only: [:index, :show]

  get '/cart', to: 'cart#show'

end
