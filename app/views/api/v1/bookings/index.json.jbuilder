json.bookings do
  json.array! @bookings do |booking|
    json.extract! scooter, :id, :booking_time, :user_id, :scooter_id
  end
end
