class GoalSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :category, :difficulty, :footprint, :users

  has_many :user_goals
  has_many :users, through: :user_goals
end
