class UserGoalsSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :goal_id

  belongs_to :user
  belongs_to :goal
end
