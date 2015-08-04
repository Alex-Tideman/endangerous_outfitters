Rails.application.routes.draw do
  root 'welcome#index'

  get '/activities', to: "activities#index"
end
