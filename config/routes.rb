Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :venues do
    resources :reviews
  end
end
