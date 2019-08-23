class ApplicationController < ActionController::Base
  helper_method :current_user
  helper_method :logged_in?
  before_action :authorized
  
  def current_user
    @user = User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end

  def authorized
    redirect_to login_path unless logged_in?
  end
  
  def cart
    session[:cart_exercises] ||= []
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
