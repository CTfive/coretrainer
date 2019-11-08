Rails.application.routes.draw do
  resources :sessions
  resources :workouts
  devise_for :users, controllers: { registrations: "registrations" }
 	resources :clients
	resources :trainers 
	resources :appointments
	resources :workout_logs, controller: "workoutscontroller"

	root 'static_pages#index'
end