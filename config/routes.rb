Rails.application.routes.draw do
  devise_for :users, controllers: {
  	sessions: 'users/sessions'
  }
  resources :users
  root 'static_pages#index'
end
