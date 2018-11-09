class UserSerializer < ActiveModel::Serializer
  # remember to remove password_digest
  attributes :name, :username, :location, :email, :picture, :password_digest, :id, :goals

  has_many :user_goals
  has_many :goals, through: :user_goals
end
