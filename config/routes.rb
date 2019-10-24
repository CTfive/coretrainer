Rails.application.routes.draw do
  devise_for :users
  resource :dashboard, only: [:show]
  root 'static_pages#index'
end
