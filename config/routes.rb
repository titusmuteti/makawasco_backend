Rails.application.routes.draw do
  resources :employee_clients
  resources :employees
  resources :first_names
  resources :clients
  resources :cars
end
