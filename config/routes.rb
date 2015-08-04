Rails.application.routes.draw do
  root 'welcome#index'

  get '/destinations', to: 'destinations#index'

  get '/destinations', to: 'destinations#index'

  get '/cart', to: 'cart#show'
end
