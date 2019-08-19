class ExercisesController < ApplicationController
    def index
        @exercises = Exercise.all
        #@types = [“abs”, “arms”, “back”, “chest”, “full body”, “leg”, “shoulder”]
    end

    def show
        @exercise = Exercise.find(params[:id])
    end
end
