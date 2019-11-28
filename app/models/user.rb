class User < ApplicationRecord
  has_many :scooters, dependent: :destroy
  has_many :bookings, dependent: :destroy
  validates :open_id, presence: true
end
