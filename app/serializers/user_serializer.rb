class UserSerializer < ActiveModel::Serializer
  # remember to remove password_digest
  attributes :name, :username, :location, :email, :picture, :footprint, :password_digest

  has_many :user_goals
  has_many :goals, through: :user_goals
end
