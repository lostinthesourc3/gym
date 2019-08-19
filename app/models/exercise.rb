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
end

