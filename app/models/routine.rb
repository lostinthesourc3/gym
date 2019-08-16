class Routine < ApplicationRecord
  belongs_to :user
  belongs_to :exercise
  # maybe belongs to group class
end
