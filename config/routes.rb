Rails.application.routes.draw do
  resources :clients
  resources :trainers
  root 'static_pages#index'

   devise_for :users 
  #   resources :clients
  #   resources :
  # end
  
  resource :dashboard, only: :show
end