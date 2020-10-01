require 'rest-client'

class Trail < ApplicationRecord
    has_many :favorites
    has_many :users, through: :favorites
    has_many :hikes
    has_many :users, through: :hikes


    def self.get_trails(location)
        results = Geocoder.search(location)
        lat_lon = results.first.coordinates


        trails_to_display = []
        @trails = JSON.parse(RestClient.get("https://www.hikingproject.com/data/get-trails?lat=#{lat_lon[0]}&lon=#{lat_lon[1]}&maxDistance=100&maxResults=20&key=#{ENV["HikeAPI"]}"))
        # User.where(["name = :name and email = :email", { name: "Joe", email: "joe@example.com" }])
        @trails["trails"].each do |trail|
            existing_trail = Trail.all.find do |db_trail| 
                (db_trail.name == trail["name"]) && (db_trail.location == trail["location"])
            end
            if existing_trail 
                trails_to_display << existing_trail
            else 
                created_trail = Trail.create(name: trail["name"], length: trail["length"], difficulty: trail["difficulty"], summary: trail["summary"], image: trail["imgMedium"], stars: trail["stars"], location: trail["location"])
                trails_to_display << created_trail
            end
        end
        trails_to_display 
    end

end
