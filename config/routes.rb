Rails.application.routes.draw do

  resources :comments
  resources :photos
  resources :photo_albums
  post "/signup", to: "users#signup"
  post "/login", to: "users#login"
  get "/me", to: "users#show"


end
