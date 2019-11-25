# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.destroy_all


users = [
  { name:'Mo', description: 'Hello World', email: 'ichung010@gmail.com', phone_number: '12345678', open_id: 'achung020' },
  { name:'Fabien', description: 'Hello World', email: 'ichung010@gmail.com', phone_number: '12345678', open_id: 'achung020' },
  { name:'Brian', description: 'Hello World', email: 'ichung010@gmail.com', phone_number: '12345678', open_id: 'achung020'  },
  { name:'Forrest', description: 'Hello World', email: 'ichung010@gmail.com', phone_number: '12345678', open_id: 'achung020'  }
]

User.create(users)

puts User.all
