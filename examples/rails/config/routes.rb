Rails.application.routes.draw do
    root "articles#index"
  
    get "/articles", to: "articles#index"
    get "/articles/:id", to: "articles#show"
    post "/articles", to: "articles#create"
    put "/articles/:id", to: "articles#update"
    delete "/articles/:id", to: "articles#destroy"

end