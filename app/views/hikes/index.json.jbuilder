json.array! @hikes do |hike|
    json.extract! hike, :id, :user_id, :trail_id, :name, :start, :end, :length, :photos
    json.photoUrl url_for(hike.photo)
end