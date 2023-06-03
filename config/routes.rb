Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  root to: "pages#home"
  get "/about", to: "pages#about"
  get "/featured", to: "pages#featured"

  resources :venues do
    resources :reviews
    resources :saved_venues
  end
end
