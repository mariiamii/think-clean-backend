class FavoritesController < ApplicationController
    def index 
        @favorites = Favorite.all
        render json: @favorites, include: [:product, :user]
    end

    def show
        @favorite = Favorite.find(params[:id])
        render json: @favorite, include: [:product, :user]
    end
    
    def create
        @favorite = Favorite.create(favorite_params)
        render json: @favorite
    end

    def destroy
        @favorite = Favorite.find(params[:id])
        @favorite.destroy
    end

    private
    
    def favorite_params
        params.require(:favorite).permit(:product_id, :user_id)
    end
end
