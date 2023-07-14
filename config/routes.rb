Rails.application.routes.draw do
  resources :employees
  resources :clients

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  post "/signup", to: "clients#create"
  get "/me", to: "clients#show"
end
