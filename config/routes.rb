Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" } 
  
  resources :appointments

  resources :users do
    resources :trainers do
      resources :clients 
    end
  end

  resources :users do
    resources :clients do 
      resources :workoutlogs, module: :clients, except: [:destroy, :index]
      resources :appointments, only: [:index, :show, :new]
    end
  end

  resources :users do
    resources :trainers do
      resources :workouts, module: :trainers
      resources :appointments, only: [:index, :show, :new]
    end
  end

  namespace :user do
    root :to => "static_pages#index"
  end
end
