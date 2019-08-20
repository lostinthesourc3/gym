class CartController < ApplicationController
    def update

        # session[:cart_id] = params[:exercise_id]
        flash[:notice] = "Added #{params[:exercise_name]}!"

        #model
        # byebug
    
        # cart = []
    
        # if session[:cart]
        #   session[:cart]
        # else
        #   session[:cart] = []
        # end
        add_ex_to_cart(params[:exercise_id])
        # session[:cart] << params[:nacho_id]
    
        # response
        redirect_to exercises_path
    end
end