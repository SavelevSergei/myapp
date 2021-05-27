Rails.application.routes.draw do
  devise_for :users
  root "tasks#index"

  resources :tasks
  # resources :tasks do
  #   put :complete, on: :member
  # end
  resources :users, only: [:show, :edit, :update]
end
