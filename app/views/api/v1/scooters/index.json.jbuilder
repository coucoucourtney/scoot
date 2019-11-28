
  json.scooters do
    json.array! @scooters do |scooter|
      json.extract! scooter, :id, :picture, :model, :top_speed, :price, :availability, :location, :battery, :year, :user_id, :latitude, :longitude, :created_at
  end
 end
