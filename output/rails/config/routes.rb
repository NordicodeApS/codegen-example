Rails.application.routes.draw do

  get "/shows", to: "shows#index"
  post "/shows", to: "shows#create"
  get "/shows/:id", to: "shows#show"
  delete "/shows/:id", to: "shows#destroy"

  get "/categories", to: "categories#index"
  post "/categories", to: "categories#create"
  get "/categories/:id", to: "categories#show"
  delete "/categories/:id", to: "categories#destroy"
  put "/categories/:id", to: "categories#update"

  get "/users", to: "users#index"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show"
  delete "/users/:id", to: "users#destroy"
  put "/users/:id", to: "users#update"

  get "/customers", to: "customers#index"
  post "/customers", to: "customers#create"
  get "/customers/:id", to: "customers#show"
  delete "/customers/:id", to: "customers#destroy"
  put "/customers/:id", to: "customers#update"

  get "/shows/:showid/tickets", to: "tickets#index"
  post "/shows/:showid/tickets", to: "tickets#create"
  put "/shows/:showid/tickets/:ticketid", to: "tickets#update"
  delete "/shows/:showid/tickets/:ticketid", to: "tickets#destroy"

  post "/token", to: "tokens#create"
  delete "/token", to: "tokens#destroy"

  get "/orders", to: "orders#index"
  post "/orders", to: "orders#create"
  get "/orders/:id", to: "orders#show"
  delete "/orders/:id", to: "orders#destroy"

end