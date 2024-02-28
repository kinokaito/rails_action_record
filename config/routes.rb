Rails.application.routes.draw do
  root "actions#index"
  get "/actions", to: "actions#index"
  get "/actions/new", to: "actions#new"
  post "/actions", to: "actions#create"
  resources :actions
end
