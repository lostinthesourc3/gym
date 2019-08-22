class RoutinesController < ApplicationController
    def index
        @routines = []
        Routine.where(user_id: current_user.id).map{|r| r.name}.uniq.each do |r|
            @routines << Routine.find_by(name: r)
        end
    end

    def show
        @routine = Routine.find(params[:id])
    end

    def destroy
        @routine = Routine.find(params[:id])
        @routine.find_routines.each {|r| r.destroy}
        redirect_to routines_path
    end

    def new
        @routine = Routine.new
    end

    def create
        session[:cart_exercises].each do |e|
            @routine = Routine.create(name: params[:name], user_id: current_user.id, exercise_id: e.to_i)
        end
        session[:cart_exercises] = [] 
        #byebug
        redirect_to routine_path(@routine)
    end


    def edit
        @routine = Routine.find(params[:id])
        @exercises = Exercise.all
    end

    def update 
        @routine = Routine.find(params[:id])
        @routine.update(routine_params)

        redrect_to routine_path(routine_path)
    end


    private 
    def routine_params
        params.require(:routine).permit(:name, :exercise_id)
    end
end
