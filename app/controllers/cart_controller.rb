class CartController < ApplicationController
    def update
        flash[:notice] = "Added #{params[:exercise_name]}!"
        add_ex_to_cart(params[:exercise_id])
        redirect_to exercises_path
    end

    def destroy
        session.delete(:cart_exercises)
        redirect_to exercises_path
    end
end