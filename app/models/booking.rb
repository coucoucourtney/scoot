class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :scooter
  validates :user, :scooter, presence: true
  validates :confirmation, presence: true
end
