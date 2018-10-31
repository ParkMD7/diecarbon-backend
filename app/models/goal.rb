class Goal < ApplicationRecord
  has_many :user_goals
  has_many :users, through: :user_goals
end
