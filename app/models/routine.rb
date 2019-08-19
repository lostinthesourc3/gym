class Routine < ApplicationRecord
  belongs_to :user
  belongs_to :exercise
  # maybe belongs to group class

  def find_exercises
    Exercise.where(id: self.exercise.id)
  end
end
