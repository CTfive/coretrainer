Rails.application.routes.draw do
  root 'static_pages#index'

  devise_for :users
  
  resource :dashboard, only: :show
end