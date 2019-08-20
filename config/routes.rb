Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :new, :create]
  resources :exercises, only: [:index, :show]
  resources :routines, only: [:index, :show]
  resources :group_classes, only: [:index, :show]

  # routine routes
  get '/routine', to: "routine#update", as: :add_exercise_to_routine
  delete '/routines/:id', to: "routines#destroy"

  # carts route
  patch '/cart', to:"cart#update", as: "add_to_cart"

end
