Rails.application.routes.draw do
  root "welcome#index"

  get "/trip", to: "trips#show"

  resources :activities, only: [:index, :show]

  resources :destinations, only: [:index, :show]

  get '/cart', to: 'cart#show'

end
