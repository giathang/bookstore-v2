Rails.application.routes.draw do
  root 'books#index'
  resources :books
  resources :categories

  # create API
  namespace :api, defauls: {format: 'json'} do
    namespace :v1 do
      resources :books
      resources :categories
    end
  end
end
