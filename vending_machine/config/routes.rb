Rails.application.routes.draw do
  # root 'welcome#index'
  get 'welcome/index'
  devise_for :users
  devise_for :admins
  devise_for :customers

  devise_scope :user do  
     get '/users/sign_out' => 'devise/sessions#destroy'     
     get '/customers/sign_out' => 'devise/sessions#destroy'     
  end
  get 'users/index'
  root "items#index"
  # get 'items/index'
  # resources :items
  get "/items", to: "items#index"
end
