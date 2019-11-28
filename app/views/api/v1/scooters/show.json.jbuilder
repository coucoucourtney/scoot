json.extract! @scooter, :id, :picture, :model, :top_speed, :price, :availability, :location, :battery, :year, :user_id, :latitude, :longitude
if !@scooter.bookings.nil?
  json.bookings do
    json.array! @scooter.bookings do |booking|
      json.extract! booking, :id, :confirmation, :user_id, :scooter_id
      json.commented_at booking.created_at.strftime("%A, %b %d")
    end
  end
end
json.extract! @user, :id, :name, :location, :description, :phone_number, :open_id, :avatar
