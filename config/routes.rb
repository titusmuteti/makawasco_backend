Rails.application.routes.draw do
  resources :employees
  resources :clients
  resources :sessions

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  post "/signup", to: "clients#create"
  get "/me", to: "clients#show"

  match "/signup", to: proc { [204, {}, []] }, via: :options
  match "/login", to: proc { [204, {}, []] }, via: :options

end
