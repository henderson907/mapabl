Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  root to: "pages#home"
  get "/about", to: "pages#about"

  resources :venues do
    resources :reviews
  end
end
