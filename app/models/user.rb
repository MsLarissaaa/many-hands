class User < ActiveRecord::Base
  has_many :assignments
  has_many :tasks, through: :assignments
  has_and_belongs_to_many :teams, foreign_key: 'member_id'

  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
end
