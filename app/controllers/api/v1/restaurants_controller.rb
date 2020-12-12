class Api::V1::RestaurantsController < ApplicationController

    def show
        restaurant = Restaurant.find(params[:id])
        render json: restaurant
    end

    def index
        restaurants = Restaurant.all
        render json: restaurants, except: [:created_at, :updated_at]
    end

    # def create
    #     restaurant = Restaurant.create!(restaurant_params)
    #     render json: restaurant
    # end

    # def destroy
    #     restaurant = Restaurant.find(params[:id])
    #     restaurant.destroy!
    #     render json: {}
    # end

    # def update
    #     restaurant = Restaurant.find(params[:id])
    #     restaurant.update!(name: params[:name])
    #     render json: restaurant
    # end

    private

    def restaurant_params
        params.permit(:name, :user_id)
    end
end
