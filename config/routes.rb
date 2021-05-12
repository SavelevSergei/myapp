Rails.application.routes.draw do
  root "tasks#index"

  resources :tasks
  resources :users, only: [:show, :edit, :update]
end
