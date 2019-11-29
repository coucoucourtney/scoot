json.extract! @scooter, :id, :picture, :model, :top_speed, :price, :availability, :location, :battery, :year, :user_id, :latitude, :longitude
if !@scooter.bookings.nil?
  json.bookings do
    json.array! @scooter.bookings do |booking|
      json.extract! booking, :id, :confirmation, :user_id, :scooter_id, :booking_date
      json.commented_at booking.created_at.strftime("%A, %b %d")
    end
  end
end
json.user do
json.extract! @scooter.user, :id, :name, :location, :description, :phone_number, :open_id, :avatar
end
