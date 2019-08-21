Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :new, :create]
  resources :exercises, only: [:index, :show]
  resources :routines, only: [:index, :show, :new, :create]
  resources :group_classes, only: [:index, :show]

  # user routes
  get '/users/:id/edit', to: "users#edit"
  patch '/users/:id', to: "users#update"
  delete '/users/:id', to: "users#delete", as: :delete_user

  # routine routes
  get '/routines/:id/edit', to: "routines#edit"
  patch '/routines/:id', to: "routines#update"
  get '/routine', to: "routine#update", as: :add_exercise_to_routine
  delete '/routines/:id', to: "routines#destroy", as: :delete_routine
 
  # carts route
  patch '/cart', to: "cart#update", as: "add_to_cart"
  delete '/cart', to: "cart#destroy", as: "clear_cart"

  # login stuff
  # get '/profile', to: 'users#show', as: 'profile'
  # get '/profile/edit', to: 'users#edit', as: 'edit_profile'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  # exercise routes
  get '/exercise/weight/:id', to: 'exercise#weight', as: 'exercises_weight'
end
