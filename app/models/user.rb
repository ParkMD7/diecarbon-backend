class User < ApplicationRecord
  # Associations
  has_many :user_goals
  has_many :goals, through: :user_goals

  # Auth
  has_secure_password

  # Validations
  validates :username, presence: true
  validates :username, uniqueness: { case_sensitive: false }
  validates :name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :location, presence: true
  validates :picture, presence: true

end
