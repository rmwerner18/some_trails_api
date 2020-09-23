class TrailSerializer < ActiveModel::Serializer
  attributes :id, :name, :length, :difficulty, :summary, :image, :stars, :location
end
