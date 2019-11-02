Rails.application.routes.draw do
  devise_for :users
  resource :dashboard, only: [:show]
  root 'static_pages#index'

 	resources :clients do
 		resources :workouts
 		resources :checkins
 	end

 	resources :trainers do
 		resources :plans
 		resources :schedules
 	end

  
  
  
end