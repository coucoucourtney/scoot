# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Booking.destroy_all
Scooter.destroy_all
User.destroy_all

data1 = { name:'Mo', description: 'Hells Bells', phone_number: '12345678', location: '129 Yanan west road, shanghai', open_id: 'achung020', avatar: 'https://images.unsplash.com/photo-1537815749002-de6a533c64db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'  }

data2 = { name:'Fabien', description: 'Jimmy cracked-corn', phone_number: '12345678', location: '129 Yanan west road, shanghai', open_id: 'achung020', avatar: 'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80' }
data3 = { name:'Brian', description: 'Dippity do', phone_number: '12345678', location: '129 Yanan west road, shanghai', open_id: 'achung020', avatar: 'https://images.unsplash.com/photo-1524593689594-aae2f26b75ab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80'  }

data4 = { name:'Forrest', description: 'Smack-ems', phone_number: '12345678', location: '1129 Yanan west road, shanghai', open_id: 'achung020', avatar: 'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'  }

data5 = { name:'Evel Knievel', description: 'The Knevilest', phone_number: '666999', location: '129 Yanan west road, shanghai', open_id: 'achung020', avatar: 'https://i.pinimg.com/originals/a6/c3/19/a6c319d905bfcb0a3d9fc4766dd98acf.jpg'  }


user1 = User.create!(data1)
user2 = User.create!(data2)
user3 = User.create!(data3)
user4 = User.create!(data4)
user5 = User.create!(data5)

puts User.count
# users = [
#   { name:'Mo', description: 'Hello World', phone_number: '12345678', location: '12389 xiao xiao lu shanghai', open_id: 'achung020', avatar: 'https://images.unsplash.com/photo-1537815749002-de6a533c64db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'  },
#   { name:'Fabien', description: 'Hello World', phone_number: '12345678', location: '12389 xiao xiao lu shanghai', open_id: 'achung020', avatar: 'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80' },
#   { name:'Brian', description: 'Hello World', phone_number: '12345678', location: '12389 xiao xiao lu shanghai', open_id: 'achung020', avatar: 'https://images.unsplash.com/photo-1524593689594-aae2f26b75ab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80'  },
#   { name:'Forrest', description: 'Hello World', phone_number: '12345678', location: '12389 xiao xiao lu shanghai', open_id: 'achung020', avatar: 'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'  }
# ]

# User.create(users)

scooters = [

  { model:'Activa', top_speed: '40', price: '60', availability: 'true', location: '739 Dingxi Road, Shanghai', battery: '48v20ah', year: '2016', user_id: user1.id, picture: 'https://images.unsplash.com/photo-1560693512-85fb8bc0c7a6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80' },
  { model:'Jupiter', top_speed: '40', price: '80', availability: 'true', location: '66 Wulumuqi Middle Road, Shanghai', battery: '48v20ah', year: '2018', user_id: user2.id, picture: 'https://images.unsplash.com/photo-1476419972179-ac981d01257e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80' },
  { model:'Access', top_speed: '35', price: '60', availability: 'true', location: '12 Wulumuqi Middle Rd, Shanghai', battery: '48v15ah', year: '2017', user_id: user3.id, picture: 'https://images.unsplash.com/photo-1572513516094-231dcb7792e6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80' },
  { model:'Dio', top_speed: '60', price: '90', availability: 'true', location: '83 Changshu Rd, Shanghai', battery: '60v20ah', year: '2016', user_id: user4.id, picture: 'https://images.unsplash.com/photo-1569799003675-ba5214f5dcd5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=685&q=80' },

  { model:'Pleasure', top_speed: '40', price: '70', availability: 'true', location: '65 Yanan W Road Shanghai', battery: '48v20ah', year: '2018', user_id: user4.id, picture: 'https://images.unsplash.com/photo-1556504506-7ced7edb59e0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60' },
  { model:'Maestro', top_speed: '40', price: '75', availability: 'true', location: '83 Changshu Rd, Shanghai', battery: '48v20ah', year: '2019', user_id: user1.id, picture: 'https://images.unsplash.com/photo-1515633607448-3dff12350f35?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60' },
  { model:'Fascino', top_speed: '70', price: '100', availability: 'true', location: '83 Changshu Rd, Shanghai', battery: '72v20ah', year: '2019', user_id: user2.id, picture: 'https://images.unsplash.com/photo-1565025683506-38734e4dea52?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60' },
  { model:'Edge', top_speed: '40', price: '70', availability: 'true', location: '83 Changshu Rd, Shanghai', battery: '60v20ah', year: '2019', user_id: user2.id, picture: 'https://images.unsplash.com/photo-1565515701541-0ee7b922c5ea?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60' },
  { model:'TVS', top_speed: '60', price: '120', availability: 'true', location: '83 Changshu Rd, Shanghai', battery: '60v20ah', year: '2019', user_id: user3.id, picture: 'https://images.unsplash.com/photo-1562925439-6076c6a50577?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60' },
  { model:'Dio', top_speed: '10', price: '150', availability: 'true', location: '83 Changshu Rd, Shanghai', battery: '84v35ah', year: '2019', user_id: user4.id, picture: 'https://images.unsplash.com/photo-1558978806-73073843b15e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60' }
]
Scooter.create!(scooters)

puts Scooter.count





# Booking.create!( {confirmation: 'true', user_id: 1, scooter_id: 1 } )
