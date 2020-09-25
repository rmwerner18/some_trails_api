class HikeSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :user_id, :trail_id, :name, :start, :end, :length, :photos, :photo

  belongs_to :user
  belongs_to :trail

  def photo
    object.photo.service_url if object.photo.attached?
  end

  def initialize(hikes)
    @hikes = hikes
  end


  def to_serialized_json
    @hikes.to_json(
      :except => [:created_at, :updated_at]
    )
  end

end
