class UsersController < ApplicationController
    # skip_before_action :authorized, only: [:new, :create, :show]
    before_action :find_user, only: [:show]


    def index
        @users = User.all
    end 

    def show
        @user_routines = Routine.all
    end

    def new
        @user = User.new
        render :new
    end

    def create
        @user = User.create(user_params)
        # {username: 'hi', password: 'bye', profile_photo: 'longwwwwwsitelinkurlpicture'}
        if @user.valid?
            flash[:notice] = "Signup successful! Welcome, #{@user.name}"
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render :new
        end
    end


    def edit
        render :edit
    end

    def update
        if @user.update(user_params)
            flash[:notice] = "Successfully updated profile"
            redirect_to @user
        else
            render :edit
        end
    end

    def destroy
        @user.destroy
        flash[:notice] = "Account deleted"
        redirect_to new_user_path
    end


    # private methods
    private

    def find_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :age, :height, :weight, :weigt_goal, :sex)
    end
end