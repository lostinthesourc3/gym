class Exercise < ApplicationRecord
    has_many :routines

    def self.exercise_hash
        ex_hash = {}
        ["abs", "arm", "back", "chest", "full body", "leg", "shoulder"].each do |t|
            ex_hash[t] = Exercise.where(type_of: t).order(:name)
        end
        ex_hash
    end
end
