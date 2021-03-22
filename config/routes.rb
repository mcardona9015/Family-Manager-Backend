Rails.application.routes.draw do

  resources :calendars
  post "/signup", to: "users#signup"
  post "/login", to: "users#login"
  get "/me", to: "users#show"

  post "/photo", to: "photos#create"
  get "/photo", to: "photos#index"
  patch "/photo/:id", to: "photos#update"

  post "/calendar", to: "calendars#create"
  get "/calendar", to: "calendars#index"


end
