Rails.application.routes.draw do
  root 'welcome#index'

  get "/destinations", to: "destinations#index"
end
