Rails.application.routes.draw do
  resources :shows
  resources :categories
  resources :users
  resources :customers do
    resources :tickets, only: [:index, :create]
  end
  resources :orders
  post '/token', to: 'tokens#create'
  delete '/token', to: 'tokens#destroy'
end