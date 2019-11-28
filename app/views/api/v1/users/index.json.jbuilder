json.users do
  json.array! @users do |user|
    json.extract! user, :id, :name, :location, :description, :phone_number, :open_id, :avatar, :created_at
    json.scooters user.scooters, :id, :picture, :model, :top_speed, :price, :availability, :location, :battery, :year, :user_id, :latitude, :longitude
  end
end
