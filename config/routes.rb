Rails.application.routes.draw do
  root "tweets#index"

  # users routes
  get "/signup" => "users#new"
  post "/users" => "users#create"
  get "/edit_user" => "users#edit"
  get "/profile/:id" => "users#show"

  # sessions routes
  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"

  # tweets routes
  resources :tweets

  # relationship routes
  post "/follow" => "relationships#create"
  get "/unfollow" => "relationships#destroy"
end
