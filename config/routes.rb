Rails.application.routes.draw do
  root 'twigs#index'
  resources :twigs, only: [:index, :new, :create]
end
