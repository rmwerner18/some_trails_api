class HikesController < ApplicationController

    def index
        hikes = Hike.all
        render json: hikes, except: [:created_at, :updated_at]
    end
    
    def create
        hike = Hike.create(hike_params)
        render json: hike
    end

    private
    def hike_params
      params.require(:hike).permit(:user_id, :trail_id, :name, :start, :end, :length, :photos)
    end
end
