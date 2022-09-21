Rails.application.routes.draw do
  root "tweets#index"

  # users routes
  get "/signup" => "users#new"
  post "/users" => "users#create"
  get "/edit_user" => "users#edit"
  get "/profile/:id" => "users#show"
  get "posts" => "users#index"

  # sessions routes
  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"

  # tweets routes
  resources :tweets

  # relationship routes
  post "/follow" => "relationships#create"
  delete "/unfollow" => "relationships#destroy"

  # likes routes
  resources :likes, only: [:create, :destroy]

end
