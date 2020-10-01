class TrailsController < ApplicationController
    # before_action :authorized, except: [:index] 

    def index
        if params[:location]
            trails = Trail.get_trails(params[:location])
        else
            trails = Trail.all
        end
        render json: TrailSerializer.new(trails).to_serialized_json
    end

    def show
        trail = Trail.find(params[:id])
        render json: TrailSerializer.new(trail).to_serialized_json
    end

end
