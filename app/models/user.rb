class User < ApplicationRecord
  has_many :scooters, dependent: :destroy
  has_many :bookings
  validates :open_id, presence: true
end
