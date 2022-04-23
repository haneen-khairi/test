Rails.application.routes.draw do
  resources :applications
  devise_for :users
  resources :jobs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "jobs#index"
end
