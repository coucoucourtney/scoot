
  json.scooters do
    json.array! @scooters do |scooter|
      json.extract! scooter, :id, :picture, :model, :top_speed, :price, :availability, :location, :battery, :year, :user_id, :latitude, :longitude, :created_at
      json.user scooter.user, :id, :name, :location, :description, :phone_number, :open_id, :avatar
  end
 end


 #  json.users do
 #    json.array! @users do |user|
 #      json.extract! @users, :id, :name, :location, :description, :phone_number, :open_id, :avatar
 #  end
 # end
