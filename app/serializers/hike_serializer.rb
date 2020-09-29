class HikeSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :user_id, :trail_id, :name, :start, :end, :length, :trail

  belongs_to :user
  belongs_to :trail
  has_one :photo

  def photo
    self.photo.service_url if self.photo.attached?
  end

  def initialize(hikes)
    @hikes = hikes
  end


  def to_serialized_json
    @hikes.to_json(:include => {
      :trail => {:only => [:name]}},
      :except => [:created_at, :updated_at]
    )
  end

end
