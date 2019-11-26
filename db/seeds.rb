# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# User.destroy_all
# Scooter.destroy_all

# users = [
#   { name:'Mo', description: 'Hello World', phone_number: '12345678', location: '12389 xiao xiao lu shanghai', open_id: 'achung020', avatar: 'https://images.unsplash.com/photo-1537815749002-de6a533c64db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'  },
#   { name:'Fabien', description: 'Hello World', phone_number: '12345678', location: '12389 xiao xiao lu shanghai', open_id: 'achung020', avatar: 'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80' },
#   { name:'Brian', description: 'Hello World', phone_number: '12345678', location: '12389 xiao xiao lu shanghai', open_id: 'achung020', avatar: 'https://images.unsplash.com/photo-1524593689594-aae2f26b75ab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80'  },
#   { name:'Forrest', description: 'Hello World', phone_number: '12345678', location: '12389 xiao xiao lu shanghai', open_id: 'achung020', avatar: 'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'  }
# ]

# User.create(users)

scooters = [

  { model:'xyz', top_speed: '50km', price: '500rmb', availability: 'true', location: '123 main st', battery: '48vh', year: '2019', user_id: 13, picture: 'https://images.unsplash.com/photo-1560693512-85fb8bc0c7a6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80' },
  { model:'fyi', top_speed: '50km', price: '500rmb', availability: 'true', location: '123 main st', battery: '48vh', year: '2019', user_id: 14, picture: 'https://images.unsplash.com/photo-1476419972179-ac981d01257e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80' },
  { model:'two', top_speed: '50km', price: '500rmb', availability: 'true', location: '123 main st', battery: '48vh', year: '2019', user_id: 15, picture: 'https://images.unsplash.com/photo-1572513516094-231dcb7792e6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'},
  { model:'seven', top_speed: '50km', price: '500rmb', availability: 'true', location: '123 main st', battery: '48vh', year: '2019', user_id: 16, picture: 'https://images.unsplash.com/photo-1569799003675-ba5214f5dcd5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=685&q=80' }

]
Scooter.create!(scooters)

puts Scooter.count
