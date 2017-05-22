Rails.application.routes.draw do
  
  devise_for :users
  get 'users/new'

 
root to: "client#index"

 

root "static_pages#home"

      
  resources :users

  

  resources :questions do
    resources :question_choices
  end

	  get 'home' => 'static_pages#home'
	  get 'about' => 'static_pages#about'
	  get 'faqs' => 'static_pages#faqs'
    end






