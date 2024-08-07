Rails.application.routes.draw do
  
  resources :users
  resources :account_activations, only: [:edit]
  resources :microposts,          only: [:create, :destroy]
  
  root "static_pages#home"
  get "/help", to: "static_pages#help"
  get "/about", to: "static_pages#about"
  get "/signup", to: "users#new"

  get "/tourist", to: "users#tourist"
  get    "/login",   to: "sessions#new"
  post   "/login",   to: "sessions#create"
  delete "/logout",  to: "sessions#destroy"



end
