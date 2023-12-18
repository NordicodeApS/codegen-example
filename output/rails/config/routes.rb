Rails.application.routes.draw do
  resources :shows do
    resources :tickets
  end
  resources :categories
  resources :users
  resources :customers
  resources :orders
  resource :token, only: [:create, :destroy]
end