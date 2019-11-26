json.users do
  json.array! @users do |user|
    json.extract! user, :id, :name, :location, :description, :phone_number, :open_id, :created_at
  end
end
