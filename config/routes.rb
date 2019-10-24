Rails.application.routes.draw do
  devise_for :users
	  resources :admins
	  resources :trainers
	  resources :clients
	  
  root 'static_pages#index'
end
