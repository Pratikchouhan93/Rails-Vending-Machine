Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do  
     get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  get 'users/index'
  root "items#index"
  # resources :items
  get "/items", to: "items#index"
end
