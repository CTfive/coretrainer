Rails.application.routes.draw do
  root 'static_pages#index'

  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
  
  resource :dashboard, only: :show
end