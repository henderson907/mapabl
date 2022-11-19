Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "about", to: "pages#about"
  get "my_profile", to: "pages#my_profile"

  resources :venues
end
