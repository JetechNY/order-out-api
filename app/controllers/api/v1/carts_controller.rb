class Api::V1::CartsController < ApplicationController

    def show
        cart = Cart.find(params[:id])
        render json: { cart: CartSerializer.new(current_cart) }, status: :accepted
    end

    def index
        carts = Cart.all
        render json: carts
        # , except: [:created_at, :updated_at]
    end

    def create
        @cart = Cart.create(user_params)
        if @cart.valid?
            @token = encode_token(cart_id: @cart.id)
            render json: { cart: CartSerializer.new(@cart), jwt: @token }, status: :created
        else
            render json: { error: 'failed to create cart' }, status: :not_acceptable
        end
    end

    def destroy
        cart = Cart.find(params[:id])
        cart.destroy!
        render json: {}
    end

    def update
        cart = Cart.find(params[:id])
        cart.update!(user_id: params[:user_id], note: params[:note], totalcost: params[:totalcost], checkout: params[:checkout])
        render json: cart
    end

    private

    def cart_params
        params.require(:cart).permit(:user_id, :note, :totalcost, :checkout)
    end

end
