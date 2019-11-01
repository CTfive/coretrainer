Rails.application.routes.draw do
  devise_for :users
  

 	resources :clients do
 		resources :workouts
 		resources :checkpoints
 	end

 	resources :trainers do
 		resources :plans
 		resources :schedules
 	end

  root 'static_pages#index'
  
  resource :dashboard, only: :show
end