Rails.application.routes.draw do
  root "articles#index"   #.....comment for  Setting the Application Home Page
  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"
  resources :articles do
    resources :comments
  # root "articles#index"
  end
end
