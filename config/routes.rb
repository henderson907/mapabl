Rails.application.routes.draw do
  devise_for :users, :controllers => {
    registrations: 'registrations'
  }
  root to: "pages#home"
  get '/users/:id', to: 'users#show', as: 'user'

  resources :venues do
    resources :reviews
  end
end
