class Api::V1::FavoritesController < ApplicationController

skip_before_action :authorized, only: [:create, :destroy]

    def create
        favorite = Favorite.create(favorite_params)
        if favorite.valid?
            render json: favorite, status: :created
        else
            render json: { error: favorite.errors.full_messages }, status: :not_acceptable
        end
    end

    def destroy
        favorite = Favorite.find(params[:id])
        favorite.destroy
        render json: favorite
    end

    private

    def favorite_params
        params.permit(:user_id, :haiku_id)
    end

end
