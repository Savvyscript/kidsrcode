Rails.application.routes.draw do
 devise_for :users, controllers: {
 	registrations: 'users/registrations'
 }

root to: "users#index"
get '*path', to: 'client#index'

  resources :users

  # resources :questions do
  #   resources :answers
  end





