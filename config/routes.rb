Rails.application.routes.draw do
  root 'welcome#index'

  get '/trip', to: 'trips#show'
end
