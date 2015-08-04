Rails.application.routes.draw do
  root "welcome#index"

  get "/trip", to: "trips#show"

  get "/activities", to: "activities#index"

  get "/destinations", to: "destinations#index"

  get "/destinations/show", to: "destinations#show"

  get '/cart', to: 'cart#show'
end
