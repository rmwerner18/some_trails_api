require 'rest-client'

class Trail < ApplicationRecord
    has_many :favorites
    has_many :users, through: :favorites
    has_many :hikes
    has_many :users, through: :hikes


    def self.get_trails
        @trails = JSON.parse(RestClient.get("https://www.hikingproject.com/data/get-trails?lat=40.014984&lon=-105.270546&maxDistance=50&maxResults=20&key=#{ENV["HikeAPI"]}"))
    #    puts @trails["trails"][0]["name"]
        @trails["trails"].each do |trail|
            Trail.create(name: trail["name"], length: trail["length"], difficulty: trail["difficulty"], summary: trail["summary"], image: trail["imgSqSmall"], stars: trail["stars"], location: trail["location"])
        end
    end

end
