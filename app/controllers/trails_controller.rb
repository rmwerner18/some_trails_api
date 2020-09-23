class TrailsController < ApplicationController
    def index
        trails = Trail.all
        render json: trails, except: [:created_at, :updated_at]
    end

    def show
        trail = Trail.find(params[:id])
        render json: trail, except: [:created_at, :updated_at]
    end
end
