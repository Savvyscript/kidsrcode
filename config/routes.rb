Rails.application.routes.draw do
  
  devise_for :users
  get 'users/new'

 
root to: "users#index"
get '*path', to: 'users#index'

root "static_pages#home"

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





