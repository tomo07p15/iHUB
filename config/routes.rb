Rails.application.routes.draw do
  resources :twigs, only: :index
end
