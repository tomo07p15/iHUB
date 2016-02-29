Rails.application.routes.draw do
  devise_for :users
  root 'twigs#index'
  resources :twigs, only: [:index, :new, :create, :destroy]
  resources :users
end
