class HikesController < ApplicationController

    def index
        hikes = Hike.all
        render json: HikeSerializer.new(hikes).to_serialized_json
    end

    def show
        hike = Hike.find(params[:id])
        render json: HikeSerializer.new(hike).to_serialized_json
    end
    
    def create
        puts "hi there"
        good_params = hike_params.to_h
        hike = Hike.create(good_params)
    end

    def photo
        hike = Hike.find(params[:id])
        if hike.photo.attached?
            redirect_to rails_blob_url(hike.photo)
        end
    end

    private
    def hike_params
      params.require(:hike).permit(:user_id, :trail_id, :name, :start, :end, :length, :photos, :photo)
    end
end
