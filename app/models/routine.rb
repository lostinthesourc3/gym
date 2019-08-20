class Routine < ApplicationRecord
  belongs_to :user
  belongs_to :exercise
  # maybe belongs to group class

  def find_exercises
    matching_routines = Routine.all.select{|r| (r.user_id == self.user_id) && (r.name == self.name)}
    match_rout_ex_id_list = matching_routines.map{|r| r.exercise_id}
    m = Exercise.select{|e| match_rout_ex_id_list.include?(e.id)}
    #byebug
  end
end


# matching_routines = Routine.all.select{|r| r.exercise_id == self.exercise.id} 
# exercise_id_list = matching_routines.map {|r| self.exercise.id}
# m = Exercise.select{|e| exercise_id_list.include?(e.id)}
# byebug