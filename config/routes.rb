Rails.application.routes.draw do
  devise_for :users
  resource :dashboard, only: [:index, :show]
  root 'static_pages#index'
end
