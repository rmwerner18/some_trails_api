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
        good_params = hike_params.to_h
        hike = Hike.create(good_params)
        # if hike.photo.attached?
        #     hike.photos << rails_blob_url(hike.photo)
        # end
        render json: HikeSerializer.new(hike).to_serialized_json, status: :created
    end

    def update
        good_params = hike_params.to_h
        hike = Hike.find(params[:id])
        hike.update(hike_params)
        hike.save
        render json: HikeSerializer.new(hike).to_serialized_json
    end

    def photo
        hike = Hike.find(params[:id])
        if hike.photo.attached?
            redirect_to rails_blob_url(hike.photo)
        end
    end
    
    def destroy
        hike = Hike.find(params[:id])
        hike.delete
    end

    private
    def hike_params
      params.require(:hike).permit(:user_id, :trail_id, :name, :start, :end, :length, :photos, :photo)
    end
end
