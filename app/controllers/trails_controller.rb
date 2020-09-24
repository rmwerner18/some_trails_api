class TrailsController < ApplicationController
    def index
        trails = Trail.all
        render json: TrailSerializer.new(trails).to_serialized_json
    end

    def show
        trail = Trail.find(params[:id])
        render json: TrailSerializer.new(trail).to_serialized_json
    end
end
