Rails.application.routes.draw do
  root 'books#index'
  resources :books
  resources :categories

  # create API
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :books
      resources :categories do
        resource :books, only: :show
      end
    end
  end
end
