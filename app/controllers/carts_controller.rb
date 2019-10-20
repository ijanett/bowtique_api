class CartsController < ApplicationController
    def index
        carts = Cart.all
        render json: CartSerializer.new(carts)
    end

    def show
        cart = Cart.find_by(id: params[:id])
        render json: CartSerializer.new(cart)
    end

    def create
        cart = Cart.new(cart_params)
        render json: CartSerializer.new(cart)
    end

    private

    def cart_params
        params.require(:cart).permit(:user_id, :checkout)
    end
end
