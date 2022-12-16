Rails.application.routes.draw do
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }

  # users
  post "/users", to: "users#create"
  post "/login", to: "users#login"
  get "/me", to: "users#me"
  get "/users", to: "users#index"
  delete "/users/:id", to: "users#destroy"
  patch "/users/:id", to: "users#update"

  # jobs
  get "/jobs", to: "jobs#index"
  get "/jobs/:id", to: "jobs#show"

  # productions
  get "/productions", to: "productions#index"
  get "/productions/:id", to: "productions#show"
  post "/productions", to: "productions#create"
  patch "/productions/:id", to: "productions#update"
  delete "/productions/:id", to: "productions#destroy"

  # teams
  get "/teams", to: "teams#index"
  get "/teams/:id", to: "teams#show"

  # daily_calls
  get "/daily_calls", to: "daily_calls#index"
  get "/daily_calls/:id", to: "daily_calls#show"
  post "/daily_calls", to: "daily_calls#create"
  patch "/daily_calls/:id", to: "daily_calls#update"
  delete "/daily_calls/:id", to: "daily_calls#destroy"

  # rehearsal_reports
  get "/rehearsal_reports", to: "rehearsal_reports#index"
  get "/rehearsal_reports/:id", to: "rehearsal_reports#show"
  post "/rehearsal_reports", to: "rehearsal_reports#create"
  patch "/rehearsal_reports/:id", to: "rehearsal_reports#update"
  delete "/rehearsal_reports/:id", to: "rehearsal_reports#destroy"

  # production_mtg_reports
  # get "/production_mtg_reports", to: "production_mtg_reports#index"
  # get "/production_mtg_reports/:id", to: "production_mtg_reports#show"
  # post "/production_mtg_reports", to: "production_mtg_reports#create"
  # patch "/production_mtg_reports/:id", to: "production_mtg_reports#update"
  # delete "/production_mtg_reports/:id", to: "production_mtg_reports#destroy"

  # performance_reports
  get "/performance_reports", to: "performance_reports#index"
  get "/performance_reports/:id", to: "performance_reports#show"
  post "/performance_reports", to: "performance_reports#create"
  patch "/performance_reports/:id", to: "performance_reports#update"
  delete "/performance_reports/:id", to: "performance_reports#destroy"

end
