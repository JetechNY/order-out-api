class Api::V1::CartItemsController < ApplicationController

    # skip_before_action :authorized, only: [:create, :destroy]

    def create
        cart_item = Cart_item.create(cart_item_params)
        if cart_item.valid?
            render json: cart_item, status: :created
        else
            render json: { error: cart_item.errors.full_messages }, status: :not_acceptable
        end
    end

    def destroy
        cart_item = Cart_item.find(params[:id])
        cart_item.destroy
        render json: cart_item
    end

    private

    def cart_item_params
        params.permit(:user_id, :haiku_id)
    end

end
