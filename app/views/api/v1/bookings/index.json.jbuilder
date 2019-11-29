json.bookings do
  json.array! @bookings do |booking|
    json.extract! booking, :id, :confirmation, :user_id, :scooter_id, :booking_date
  end
end
