class UserGoal < ApplicationRecord
  # Associations
  belongs_to :user
  belongs_to :goal
  
end
