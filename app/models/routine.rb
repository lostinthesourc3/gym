class Routine < ApplicationRecord
  belongs_to :user
  belongs_to :exercise
  #validates :name, uniqueness: {scope: :user, message: "this routine name already exists for this user!"}

  def find_exercises
    match_rout_ex_id_list = find_routines.map{|r| r.exercise_id}
    Exercise.select{|e| match_rout_ex_id_list.include?(e.id)}
  end

  def find_routines
    Routine.all.select{|r| (r.user_id == self.user_id) && (r.name == self.name)}
  end
end