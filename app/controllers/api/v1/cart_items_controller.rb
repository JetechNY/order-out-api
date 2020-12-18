class Api::V1::CartItemsController < ApplicationController

    # skip_before_action :authorized, only: [:create, :destroy]
    def index
        cart_items = CartItem.all
        render json: cart_items
    end

    def show
        cart_item = CartItem.find(params[:id])
        render json: cart_item
    end

    def create
        cart_item = CartItem.create(cart_item_params)
        menu_item = cart_item.menu_item
        if cart_item.valid?
            render json: {cart_item: CartItemSerializer.new(cart_item), menu_item: MenuItemSerializer.new(menu_item)}, status: :created
        else
            render json: { error: cart_item.errors.full_messages }, status: :not_acceptable
        end
    end

    def destroy
        cart_item = CartItem.find(params[:id])
        cart_item.destroy
        render json: cart_item
    end

    private

    def cart_item_params
        params.permit(:menu_item_id, :cart_id)
    end

end
