Rails.application.routes.draw do
  root "tweets#index"

  # users routes
  # resources :users
  get "/signup" => "users#new"
  post "/users" => "users#create"
  get "/users/:id/edit" => "users#edit"
  patch "/users/:id" => "users#update"
  get "/profile/:id" => "users#show"
  get "/users/:id", to: "users#show", as: "user"
  
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

  # comments routes
  resources :comments

end
