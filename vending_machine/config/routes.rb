Rails.application.routes.draw do

  root "welcome#index"

  # devise_for :users
  devise_for :admins
  # devise_for :customers

  devise_scope :user do  
     get '/users/sign_out' => 'devise/sessions#destroy'     
     get '/customers/sign_out' => 'devise/sessions#destroy'     
  end

  # namespace :test do
  #   resources :items
  # end

  # scope path: 'path', module: 'module', as: 'as' do
  #   resources :test
  # end

  # resources :homes do
  #   get :post, on: :collection
  # end

  resources :homes do
    collection do
      get :post
      post :comment
    end
  end

  # resources :homes do
  #   get :post, on: :member
  #   post :comment, on: :member
  # end

  # get  '/dashboard', to: 'dashboard#show'
  resources :users
  resources :items
end
