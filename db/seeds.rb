# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# User.destroy_all

# users = [
#   { name:'Mo', description: 'Hello World', phone_number: '12345678', open_id: 'achung020' },
#   { name:'Fabien', description: 'Hello World', phone_number: '12345678', open_id: 'achung020' },
#   { name:'Brian', description: 'Hello World', phone_number: '12345678', open_id: 'achung020'  },
#   { name:'Forrest', description: 'Hello World', phone_number: '12345678', open_id: 'achung020'  }
# ]

# User.create(users)

Scooter.destroy_all
scooters = [

  { model:'xyz', top_speed: '50km', price: '500rmb', availability: 'true', location: '123 main st', battery: '48vh', year: '2019', user_id: 9 },
  { model:'fyi', top_speed: '50km', price: '500rmb', availability: 'true', location: '123 main st', battery: '48vh', year: '2019', user_id: 10 },
  { model:'two', top_speed: '50km', price: '500rmb', availability: 'true', location: '123 main st', battery: '48vh', year: '2019', user_id: 11 },
  { model:'seven', top_speed: '50km', price: '500rmb', availability: 'true', location: '123 main st', battery: '48vh', year: '2019', user_id: 12 }

]
Scooter.create!(scooters)

puts Scooter.count
