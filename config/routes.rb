Rails.application.routes.draw do
  root "welcome#index"

  get "/trip", to: "trips#index"

  resources :activities, only: [:index, :show]

  resources :destinations, only: [:index, :show]

  # get '/cart_trips', to: 'cart_trips#index'

  get '/cart_trips', to: 'cart_trips#index'

  post '/cart_trips', to: 'cart_trips#create'

end
