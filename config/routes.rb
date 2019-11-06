Rails.application.routes.draw do
  resources :workouts
  devise_for :users 
  resource :dashboard, only: [:show]
 	resources :clients
	resources :trainers 
	resources :appointments
	resources :workouts
	resources :workout_logs, controller: "workoutscontroller"
	root 'static_pages#index'
end