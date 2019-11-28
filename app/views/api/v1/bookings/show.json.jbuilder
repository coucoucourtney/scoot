 json.booking do
   json.id @booking.id
   json.confirmation @booking.confirmation
   # json.booking_user @booking.user.name

   json.scooter do
    json.model @booking.scooter.model
    json.year @booking.scooter.year
    json.top_speed @booking.scooter.top_speed
    json.battery @booking.scooter.battery
    json.price @booking.scooter.price
    json.picture @booking.scooter.picture
    json.year @booking.scooter.year
    json.user_id @booking.scooter.user_id
    json.location @booking.scooter.location
    json.latitude @booking.scooter.latitude
    json.longitude @booking.scooter.longitude
   end
   json.scooter_user do
    json.name @booking.scooter.user.name
    json.phone_number @booking.scooter.user.phone_number
    json.avatar @booking.scooter.user.avatar
    json.open_id @booking.scooter.user.open_id
    json.location @booking.scooter.user.location
    json.description @booking.scooter.user.description
   end
end
