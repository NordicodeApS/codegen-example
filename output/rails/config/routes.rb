Rails.application.routes.draw do

  get "/shows", to: "shows#index"
  get "/shows/:id", to: "shows#show"
  post "/shows", to: "shows#create"
  put "/shows/:id", to: "shows#update"
  delete "/shows/:id", to: "shows#destroy"

  get "/categories", to: "categories#index"
  get "/categories/:id", to: "categories#show"
  post "/categories", to: "categories#create"
  put "/categories/:id", to: "categories#update"
  delete "/categories/:id", to: "categories#destroy"

  get "/users", to: "users#index"
  get "/users/:id", to: "users#show"
  post "/users", to: "users#create"
  put "/users/:id", to: "users#update"
  delete "/users/:id", to: "users#destroy"

  get "/customers", to: "customers#index"
  get "/customers/:id", to: "customers#show"
  post "/customers", to: "customers#create"
  put "/customers/:id", to: "customers#update"
  delete "/customers/:id", to: "customers#destroy"

  get "/shows/:showid/tickets", to: "tickets#index"
  post "/shows/:showid/tickets", to: "tickets#create"
  put "/shows/:showid/tickets/:ticketid", to: "tickets#update"
  delete "/shows/:showid/tickets/:ticketid", to: "tickets#destroy"

  post "/token", to: "tokens#create"
  delete "/token", to: "tokens#destroy"

  get "/orders", to: "orders#index"
  get "/orders/:id", to: "orders#show"
  post "/orders", to: "orders#create"
  delete "/orders/:id", to: "orders#destroy"

end