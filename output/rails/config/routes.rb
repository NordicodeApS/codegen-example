Rails.application.routes.draw do

  # Shows routes
  get "/shows", to: "shows#index"
  get "/shows/:id", to: "shows#show"
  post "/shows", to: "shows#create"
  delete "/shows/:id", to: "shows#destroy"

  # Categories routes
  get "/categories", to: "categories#index"
  get "/categories/:id", to: "categories#show"
  post "/categories", to: "categories#create"
  delete "/categories/:id", to: "categories#destroy"
  put "/categories/:id", to: "categories#update"

  # Users routes
  get "/users", to: "users#index"
  get "/users/:id", to: "users#show"
  post "/users", to: "users#create"
  delete "/users/:id", to: "users#destroy"
  put "/users/:id", to: "users#update"

  # Customers routes
  get "/customers", to: "customers#index"
  get "/customers/:id", to: "customers#show"
  post "/customers", to: "customers#create"
  delete "/customers/:id", to: "customers#destroy"
  put "/customers/:id", to: "customers#update"

  # Tickets routes
  get "/shows/:showid/tickets", to: "tickets#index"
  post "/shows/:showid/tickets", to: "tickets#create"
  put "/shows/:showid/tickets/:ticketid", to: "tickets#update"
  delete "/shows/:showid/tickets/:ticketid", to: "tickets#destroy"

  # Token routes
  post "/token", to: "tokens#create"
  delete "/token", to: "tokens#destroy"

  # Orders routes
  get "/orders", to: "orders#index"
  get "/orders/:id", to: "orders#show"
  post "/orders", to: "orders#create"
  delete "/orders/:id", to: "orders#destroy"

end