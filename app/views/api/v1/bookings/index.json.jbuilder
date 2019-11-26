json.bookings do
  json.array! @bookings do |booking|
    json.extract! scooter, :id, :confirmation, :user_id, :scooter_id
  end
end
