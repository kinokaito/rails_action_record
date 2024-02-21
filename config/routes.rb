Rails.application.routes.draw do
  root "actions#index"
  get "/actions", to: "actions#index"
  get "/actions/new", to: "actions#new"
  post "/actions/create", to: "actions#create"
end
