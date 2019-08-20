class ExercisesController < ApplicationController
    before_action :find_exercise, only: [:show]
    before_action :show_cart, only: [:index]

    def index
        @exercises = Exercise.exercise_hash
        # show_cart
    end

    def show
    
        @exercise = Exercise.find(params[:id])
    end

    private
    def find_exercise
        @exercise = Exercise.find(params[:id])
    end
end
