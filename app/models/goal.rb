class Goal < ApplicationRecord
  # Associations
  has_many :user_goals
  has_many :users, through: :user_goals
  
end
