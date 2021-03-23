Rails.application.routes.draw do

  resources :list_items
  resources :lists
  resources :calendars
  post "/signup", to: "users#signup"
  post "/login", to: "users#login"
  get "/me", to: "users#show"

  post "/photo", to: "photos#create"
  get "/photo", to: "photos#index"
  patch "/photo/:id", to: "photos#update"

  post "/calendar", to: "calendars#create"
  get "/calendar", to: "calendars#index"

  get "/list", to: "lists#index"
  post "/list", to: "lists#create"

  post "/listItem", to: "lists#create_list_item"


end
