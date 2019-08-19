class UsersController < ApplicationController
    def index
        @users = User.all
    end 

    def show
        @user = User.find(params[:id])
        @user_routines = Routine.all
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        redirect_to user_path(@user)
    end

    # private methods
    private
    def user_params
        params.require(:user).permit(:name, :age, :height, :weight, :weigt_goal, :sex)
    end
end


# def new
#     @heroine = Heroine.new
#     @powers = Power.all
# end
