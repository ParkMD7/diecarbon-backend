class GoalSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :category, :difficulty, :footprint

  has_many :users
end
