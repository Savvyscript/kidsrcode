Rails.application.routes.draw do
  get 'users/new'

 devise_for :users, controllers: {
 	registrations: 'users/registrations'
 }

root to: "users#index"
get '*path', to: 'users#index'

  resources :users

  resources :sessions, only: [:new, :create, :destroy]  

  resources :questions do
    resources :question_choices
  end
end

#   resources :users
#   resources :user_answers
#    end
# end


  # resources :questions do
  #   resources :answers
  # end





