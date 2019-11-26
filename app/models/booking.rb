class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :scooter
  validates :user, :scooter, presence: true
  validates :booking_time, presence: true
end
