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

    def create
        @routine = Routine.create(routine_params)
        redirect_to routine_path(@routine)
    end


    def edit
        @routine = Routine.find(params[:id])
    end


    private 
    def routine_params
        params.require(:routine).permit(:name, :exercise_id)
    end
end
