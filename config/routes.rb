Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  resources :clients do 
    resources :workoutlogs, module: :clients, except: [:destroy, :index]
    resources :relations
  end

  resources :trainers do
    resources :workouts, module: :trainers
    resources :appointments, module: :trainers
  end
  root 'static_pages#index'
end
