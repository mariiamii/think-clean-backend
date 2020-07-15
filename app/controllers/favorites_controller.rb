class FavoritesController < ApplicationController
    def index 
        @favorites = Favorite.all
        render json: @favorites, include: [:product, :user]
    end

    def show
        @favorite = Favorite.find(params[:id])
        render json: @favorite, include: [:product, :user]
    end

    def destroy
        @favorite = Favorite.find(params[:id])
        @favorite.destroy
    end
end
