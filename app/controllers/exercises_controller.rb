class ExercisesController < ApplicationController
    #before_action :find_exercise, only: [:show]
    before_action :show_cart, only: [:index]

    def index
        @exercises = Exercise.exercise_hash
    end

    def show
        #byebug
        @exercise = Exercise.find(params[:id])
    end

    def weight
        #byebug
        @exercise = Exercise.find(params[:id])
        @exercise.update(weight: params[:weight])
        @plate_hash = barbell(@exercise.weight)
        render :weight
    end

    private
    def find_exercise
        @exercise = Exercise.find(params[:id])
    end

    def barbell(input)
        if input.to_i == 45 
            return "You only need the bar!"
        elsif input.to_i < 45 
            return "Must be above 45 pounds!"
        elsif input.to_i % 5 != 0
            return "Must be divisible by 5!" 
        else
          plate_hash = {}
          plate_array = [45, 35, 25, 10, 5, 2.5]
          one_side_weight = (input.to_i - 45) / 2.0
        
          plate_array.each do |plate_size|
              plate_amount = (one_side_weight / plate_size).floor
              plate_hash[plate_size.to_s.to_sym] = plate_amount
              one_side_weight -= (plate_size * plate_amount)
          end 
        end
        plate_hash.reject! {|plate, amount| amount == 0}
    end
end
