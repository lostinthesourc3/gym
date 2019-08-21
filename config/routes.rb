Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :new, :create]
  resources :exercises, only: [:index, :show]
  resources :routines, only: [:index, :show, :new]
  resources :group_classes, only: [:index, :show]

  # user routes
  get '/users/:id/edit', to: "users#edit"
  patch '/users/:id', to: "users#update"
  delete '/users/:id', to: "users#delete", as: :delete_user

  # routine routes
  get '/routines/:id/edit', to: "routines#edit"
  patch '/routines/:id', to: "routines#update"
  post '/routines', to: "routines#create", as: "routines_create"

  get '/routine', to: "routine#update", as: :add_exercise_to_routine
  delete '/routines/:id', to: "routines#destroy"
 
  # carts route
  patch '/cart', to:"cart#update", as: "add_to_cart"
end
