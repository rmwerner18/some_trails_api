# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Trail.create(:name => "White Ridge Trail", :length => 100.0, :difficulty => "blue", :summary => "A really good trail", :image => "https://images.pexels.com/photos/1578750/pexels-photo-1578750.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", :stars => 4, :location => "Boulder")
Trail.create(:name => "Blue Ridge Trail", :length => 100.0, :difficulty => "black", :summary => "A really great trail", :image => "https://images.pexels.com/photos/1578750/pexels-photo-1578750.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", :stars => 5, :location => "Talahasee")
Trail.create(:name => "Red Ridge Trail", :length => 100.0, :difficulty => "blueBlack", :summary => "A solid trail", :image => "https://images.pexels.com/photos/1578750/pexels-photo-1578750.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", :stars => 4, :location => "New York City")
Trail.create(:name => "Black Ridge Trail", :length => 100.0, :difficulty => "blue", :summary => "A decent trail", :image => "https://images.pexels.com/photos/1578750/pexels-photo-1578750.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", :stars => 2, :location => "Sante Fe")

User.create(:username => "mimi", :password => "12345", :bio => "I love to Hike", :image => "https://images.pexels.com/photos/1578750/pexels-photo-1578750.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")