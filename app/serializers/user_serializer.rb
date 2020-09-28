class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :bio, :image

  def initialize(users)
    @users = users
  end


  def to_serialized_json
    @users.to_json(:include => {
      :hikes => {:only => [
        :id, :user_id, :trail_id, :name, :start, :end, :length, :photos, :photo
      ]}, 
      :favorites => {:only => [
        :trail_id
      ]}}, 
      :except => [:created_at, :updated_at]
    )
  end

end
