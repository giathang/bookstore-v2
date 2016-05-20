Rails.application.routes.draw do
  root 'books#index'
  resources :books
  resources :categories

  # create API
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :books
      resources :categories do
        get 'books' => 'categories#get_books_by_category' , on: :member
      end
    end
  end
end
