Rails.application.routes.draw do
  devise_for :users
  resource :dashboard, only: [:show]
  root 'static_pages#index'

  namespace :users do
  	resources :roles do
  		resources :clients do
  			resources :workout
  			resources :checkpoint
  		end
			resources :trainers do
				resources :workout_plan
				# resources :schedule
			end
		end
	end
end