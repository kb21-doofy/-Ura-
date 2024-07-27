Rails.application.routes.draw do
  resources :users
  root "static_pages#home"
  get "/help", to: "static_pages#help"
  get "/about", to: "static_pages#about"

end
