Rails.application.routes.draw do
  devise_for :users
  root 'twigs#index'
  resources :twigs do
    resources :comments, only: [:create]
  end
  resources :users
  resources :ongoings do
    resources :comments, only: [:create]
  end
end
