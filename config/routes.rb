Rails.application.routes.draw do
  root 'welcome#index'

  get "/destinations", to: "destinations#index"

  get "/destinations/show", to: "destinations#show"
end
