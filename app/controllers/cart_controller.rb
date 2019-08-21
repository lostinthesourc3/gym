class CartController < ApplicationController
    def update

        flash[:notice] = "Added #{params[:exercise_name]}!"

        add_ex_to_cart(params[:exercise_id])
    
        # response
        redirect_to exercises_path
    end

    def destroy
        session.delete(:cart)
        redirect_to exercises_path
    end
end