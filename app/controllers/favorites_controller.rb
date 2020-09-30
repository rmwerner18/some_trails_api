class FavoritesController < ApplicationController
    
    def index
        favorites = Favorite.all
        render json: favorites, except: [:created_at, :updated_at]
    end
    
    def create
        favorite = Favorite.create(favorite_params)
        render json: favorite
    end

    def show
        favorite = Favorite.find(params[:id])
        render json: favorite
    end

    def destroy
        favorite = Favorite.find(params[:id])
        favorite.delete
    end

    private
    def favorite_params
      params.require(:favorite).permit(:user_id, :trail_id)
    end
end
