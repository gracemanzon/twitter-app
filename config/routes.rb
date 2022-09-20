Rails.application.routes.draw do
  root "tweets#index"
  
  # users routes
  get "/signup" => "users#new"
  post "/users" => "users#create"

  # sessions routes
  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"

  # tweets routes
  resources :tweets
end
