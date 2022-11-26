Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  root to: "pages#home"

  resources :venues do
    resources :reviews
  end
end
