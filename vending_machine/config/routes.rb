Rails.application.routes.draw do

  root "items#index"
  
  devise_for :users

  devise_scope :user do  
     get '/users/sign_out' => 'devise/sessions#destroy'     
  end

  resources :users
  resources :items, as: 'items'
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

  # resources :homes do
  #   collection do
  #     get :post
  #     post :comment
  #   end
  # end

  # resources :homes do
  #   get :post, on: :member
  #   post :comment, on: :member
  # end

  # get  '/dashboard', to: 'dashboard#show'