Rails.application.routes.draw do
  root "welcome#index"

  get "/trip", to: "trips#show"

  resources :activities, only: [:index, :show]

  resources :destinations, only: [:index, :show]

  get '/cart', to: 'cart#show'
  # get '/cart', to: 'cart_items#index'

  post '/cart_trips', to: 'cart_trips#create'

end
