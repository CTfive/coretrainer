Rails.application.routes.draw do
  resources :sessions
  resources :appointments
  resources :workoutlogs
  resources :workouts
  devise_for :users
 	resources :clients
	resources :trainers 

	root 'static_pages#index'
end