Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  
  resources :appointments

  resources :clients do 
    resources :workoutlogs, module: :clients, except: [:destroy, :index]
    resources :appointments, only: [:index, :show, :new]
  end

  resources :trainers do
    resources :workouts, module: :trainers
    resources :appointments, only: [:index, :show, :new]
  end

  namespace :user do
    root 'static_pages#index'
  end
end
