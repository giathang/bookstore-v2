Rails.application.routes.draw do
  root 'books#index'
  resources :books do
    resources :comments
  end
  resources :authors
  resources :categories, only: :show

  #API
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :books do
        resources :comments
      end
      resources :authors
      resources :categories
    end
  end
end
