Rails.application.routes.draw do
  # resources :sessions
  resources :appointments
  resources :workoutlogs
  resources :workouts
  devise_for :users, controllers: { registrations: "registrations" }
 	resources :clients
  resources :trainers 

	root 'static_pages#index'
end