class Api::V1::CartItemsController < ApplicationController


    def index
        cartitems = CartItems.all
        render json: cartitems
    end

    def show
        cartitem = CartItems.find(params[:id])
        render json: cartitem
    end

end
