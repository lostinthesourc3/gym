class ApplicationController < ActionController::Base
    # method to be my cart
  def cart
    session[:cart] ||= []
  end

  # need to hold all my item id's
  def add_ex_to_cart(exercise_id)
    cart << exercise_id
  end

  # method to add a item to a cart
  def show_cart
    # GETTING ALL THE ITEMS
    @cart_exercises = Exercise.find(cart)
  end

end
