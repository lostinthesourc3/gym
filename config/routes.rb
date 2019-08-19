Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :new, :create]
  resources :exercises, only: [:index, :show]
  resources :routines, only: [:index, :show]
  resources :group_classes, only: [:index, :show]
end
