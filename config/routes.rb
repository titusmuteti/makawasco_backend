Rails.application.routes.draw do
  resources :bills
  resources :employees
  resources :clients
  resources :sessions

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  post "/signup", to: "clients#create"
  get "/me", to: "clients#show"

  post '/admin/login', to: 'admin_sessions#create'
  get '/admin_sessions', to: 'admin_sessions#index'

  match "/signup", to: proc { [204, {}, []] }, via: :options
  match "/login", to: proc { [204, {}, []] }, via: :options

end
