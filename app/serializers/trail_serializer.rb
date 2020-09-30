class TrailSerializer < ActiveModel::Serializer
  attributes :id, :name, :length, :difficulty, :summary, :image, :stars, :location

  def initialize(trails)
    @trails = trails
  end


  def to_serialized_json
    @trails.to_json(:include => {
      :hikes => {:only => [:name, :user_id]}, :favorites => {:only => [:user_id, :id]}}, :except => [:created_at, :updated_at]
  )
  end

end
