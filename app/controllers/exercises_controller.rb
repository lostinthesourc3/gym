class ExercisesController < ApplicationController
    def index
        @exercises = Exercise.exercise_hash
    end

    def show
        @exercise = Exercise.find(params[:id])
    end
end
