Rails.application.routes.draw do
  devise_for :users
  resource :dashboard, only: [:show]
  root 'static_pages#index'

 		resources :clients 
 		resources :trainers 

  
	#  resources :workouts
	#  resources :checkins
	#  resources :plans
	#  resources :schedules
  
end