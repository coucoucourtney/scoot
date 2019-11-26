json.extract! @scooter, :id, :booking_time, :user_id, :scooter_id
# json.bookings do
#   json.array! @scooter.bookings do |booking|
#     json.extract! booking, :id, :booking_time, :user_id, :scooter_id
#     json.commented_at comment.created_at.strftime("%A, %b %d")
#   end
end
