# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Trail.destroy_all
User.destroy_all
Hike.destroy_all
Favorite.destroy_all

trail1 = Trail.create(:name => "White Ridge Trail", :length => 100.0, :difficulty => "blue", :summary => "A really good trail", :image => "https://images.pexels.com/photos/1578750/pexels-photo-1578750.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", :stars => 4, :location => "Boulder")
trail2 = Trail.create(:name => "Blue Ridge Trail", :length => 100.0, :difficulty => "black", :summary => "A really great trail", :image => "https://images.pexels.com/photos/1578750/pexels-photo-1578750.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", :stars => 5, :location => "Talahasee")
trail3 = Trail.create(:name => "Red Ridge Trail", :length => 100.0, :difficulty => "blueBlack", :summary => "A solid trail", :image => "https://images.pexels.com/photos/1578750/pexels-photo-1578750.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", :stars => 4, :location => "New York City")
trail4 = Trail.create(:name => "Black Ridge Trail", :length => 100.0, :difficulty => "blue", :summary => "A decent trail", :image => "https://images.pexels.com/photos/1578750/pexels-photo-1578750.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", :stars => 2, :location => "Sante Fe")

user = User.create(:username => "mimi", :password => "12345", :bio => "I love to Hike", :image => "https://images.pexels.com/photos/1578750/pexels-photo-1578750.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")

Hike.create(user_id: user.id, trail_id: trail4.id, name: "Saturday Morning Hike", start: "2001-02-03T04:05:06", end: "2001-02-05T04:05:06", length: 26.2, photos: ["https://www.nps.gov/subjects/nationaltrailssystem/images/NationalScenicTrails.JPG", "https://magazine.deporvillage.com/wp-content/uploads/2017/11/consejos-trail-running-deporvillage-header.jpg", "https://static.rootsrated.com/image/upload/s--lAzGlH8X--/t_rr_large_traditional/ylh0atflhlzftoqb7xts.jpg"])
Hike.create(user_id: user.id, trail_id: trail3.id, name: "Sunday Morning Hike", start: "2001-02-03T04:05:06", end: "2001-02-05T04:05:06", length: 30.0, photos: ["https://www.nps.gov/subjects/nationaltrailssystem/images/NationalScenicTrails.JPG", "https://magazine.deporvillage.com/wp-content/uploads/2017/11/consejos-trail-running-deporvillage-header.jpg", "https://static.rootsrated.com/image/upload/s--lAzGlH8X--/t_rr_large_traditional/ylh0atflhlzftoqb7xts.jpg"])
Hike.create(user_id: user.id, trail_id: trail2.id, name: "Tuesday Morning Hike", start: "2001-02-03T04:05:06", end: "2001-02-05T04:05:06", length: 11.9, photos: ["https://www.nps.gov/subjects/nationaltrailssystem/images/NationalScenicTrails.JPG", "https://magazine.deporvillage.com/wp-content/uploads/2017/11/consejos-trail-running-deporvillage-header.jpg", "https://static.rootsrated.com/image/upload/s--lAzGlH8X--/t_rr_large_traditional/ylh0atflhlzftoqb7xts.jpg"])
Hike.create(user_id: user.id, trail_id: trail1.id, name: "Saturday Night Hike", start: "2001-02-03T04:05:06", end: "2001-02-05T04:05:06", length: 101.1, photos: ["https://www.nps.gov/subjects/nationaltrailssystem/images/NationalScenicTrails.JPG", "https://magazine.deporvillage.com/wp-content/uploads/2017/11/consejos-trail-running-deporvillage-header.jpg", "https://static.rootsrated.com/image/upload/s--lAzGlH8X--/t_rr_large_traditional/ylh0atflhlzftoqb7xts.jpg"])

Favorite.create(user: user, trail: trail1)
Favorite.create(user: user, trail: trail2)