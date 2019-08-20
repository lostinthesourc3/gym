class RoutinesController < ApplicationController
    def index
        @routines = Routine.all
    end

    def show
        @routine = Routine.find(params[:id])
    end

    def destroy
        @routine = Routine.find(params[:id])
        @routine.destroy

        redirect_to routines_path
    end

    def new
        @routine = Routine.new
    end

    def create
        params[:exercises].each do |e|
            @routine = Routine.create(name: "Monday", user_id: 1, exercise_id: e.to_i)
            #byebug
        end
        redirect_to (routine_path(@routine))
    end


    def edit
        @routine = Routine.find(params[:id])
    end


    private 
    def routine_params
        params.require(:routine).permit(:name, :exercise_id)
    end
end
