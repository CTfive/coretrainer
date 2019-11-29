Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" } 
  
  resources :appointments
  resources :clients
  resources :trainers

  resources :trainers do
    resources :clients, only: :show
  end

  resources :clients do 
    resources :trainers
  end

  resources :clients do 
    resources :workoutlogs, module: :clients, except: [:destroy, :index]
    resources :appointments, only: [:index, :show, :new]
  end

  resources :trainers do
    resources :workouts, module: :trainers
    resources :appointments, only: [:index, :show, :new]
  end


  resources :clients do
    resources :trainers do 
      resources :appointments, only: [:index, :show, :new, :create]
    end
  end

  root "static_pages#index"
end
