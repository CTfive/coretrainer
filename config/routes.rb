Rails.application.routes.draw do
  resources :trainers
  devise_for :users 
  resource :dashboard, only: [:show]
  root 'static_pages#index'

		namespace :user do 
 			resources :clients
			resources :trainers 
		end

  
	#  resources :workouts
	#  resources :checkins
	#  resources :plans
	#  resources :schedules
  
end