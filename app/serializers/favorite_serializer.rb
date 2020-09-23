class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :trail_id
end
