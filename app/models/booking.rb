class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :scooter
  validates :user, :scooter, presence: true
  validates :confirmation, presence: true
  validates :booking_date, presence: true
end
