json.extract! @user, :id, :name, :location, :description, :phone_number, :open_id
json.scooters do
  json.array! @user.scooters do |scooter|
    json.extract! scooter, :id, :picture, :model, :top_speed, :price, :availability, :location, :battery, :year, :user_id
    json.commented_at scooter.created_at.strftime("%A, %b %d")
  end
end
