class User < ApplicationRecord
  has_many :events, foreign_key: :creator_id
  has_many :attendees, through: :events

  validates :username, :email, presence: true, uniqueness: { case_sensitive: true }
end
