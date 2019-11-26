class User < ApplicationRecord
  has_many :scooters
  has_many :bookings
  validates :open_id, presence: true
end
