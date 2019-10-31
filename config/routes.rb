Rails.application.routes.draw do
  devise_for :users
  	
 	namespace :clients do
 		resources :workouts
 		resources :checkpoint
 	end

 	namespace :trainers do
 		resources :plans
 		resources :schedule
 	end

  root 'static_pages#index'
  
  resource :dashboard, only: :show
end