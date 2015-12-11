Rails.application.routes.draw do

  root to: "site#index"

  get "/signup", to: "users#new", as: :signup
  get "/profile", to: "users#show", as: :profile

  get "/login", to: "sessions#new", as: :login
  get "/logout", to: "sessions#destroy", as: :logout

  resources :users, only: [:create]
  resources :sessions, only: [:create]
  
  resources :posts do
  	resources :comments
  end

  # resources :comments do
  # 	resources :votes
  # end
  # resources :votes, only: [:create, :update]

end