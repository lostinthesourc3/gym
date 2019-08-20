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

    # method to update or edit
end
