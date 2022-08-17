Rails.application.routes.draw do
  get 'users/index'
  root "items#index"
  # resources :items
  get "/items", to: "items#index"
end
