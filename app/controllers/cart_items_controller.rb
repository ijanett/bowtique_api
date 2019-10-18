class CartItemsController < ApplicationController
    def index
        cart_items = CartItem.all
        render json: cart_items
    end

    def create
        cart = Cart.find_by(id: params[:cart_id])
        user = cart.user
        cart_item = CartItem.new(cart_id: cart.id, item_id: params[:item_id])
        
        render json: Cart.new(cart)
    end

    def destroy
        cart = Cart.find_by(id: params[:cart_id])
        cart_item = CartItem.find_by(id: params[:id])
        cart_item.destroy

        render json: Cart.new(cart)
    end
end
