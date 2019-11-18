Rails.application.routes.draw do
  resources :workoutlogs
  resources :workouts
  devise_for :users, controllers: { registrations: "registrations" }
  resources :clients do 
    resources :workoutlogs, module: :clients, except: [:destroy, :index]
  end

  resources :trainers do
    resources :workouts, module: :trainers
  end

  resources :relations
  namespace :meeting do 
    resources :relations do 
      resources :appointments
    end
  end
  
  root 'static_pages#index'
end
