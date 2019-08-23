class Exercise < ApplicationRecord
    has_many :routines

    def self.exercise_hash
        ex_hash = {}
        Exercise.ex_type_array.each do |t|
            ex_hash[t] = Exercise.where(type_of: t).order(:name)
        end
        ex_hash
    end

    def self.ex_type_array
        Exercise.all.map{|e| e.type_of}.uniq.sort
    end

    def barbell
        input = self.weight
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
              plate_hash[plate_size.to_s.to_sym] = plate_amount * 2
              one_side_weight -= (plate_size * plate_amount)
          end 
        end
        plate_hash.reject! {|plate, amount| amount == 0}
    end

    def print_out
        string = ""
        self.barbell.each do |plate, amount|  
            string += "#{plate}: #{amount}\n"
        end
        string
    end
end

