Rails.application.routes.draw do
  root 'books#index'
  resources :books
  resources :categories, only: :show

end
