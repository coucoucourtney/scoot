
  json.scooters do
    json.array! @scooters do |scooter|
      json.extract! scooter, :id, :picture, :model, :top_speed, :price, :availability, :location, :battery, :year, :user_id, :created_at
  end
 end
