class HikeSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :trail_id, :name, :start, :end, :length, :photos
end
