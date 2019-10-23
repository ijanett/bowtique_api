class CartItemsController < ApplicationController
    def index
        cart_items = CartItem.all

        render json: CartItemSerializer.new(cart_items)
    end

    def create
        cart = Cart.find_by(id: params[:cart_id])
        user = cart.user
        cart_item = CartItem.create(cart_id: cart.id, item_id: params[:item_id])

        options = {
            include: [:carts, :cart_items]
        }

        render json: UserSerializer.new(user, options)
    end

    def destroy
        cart_item = CartItem.find_by(id: params[:id])
        cart = Cart.find_by(id: params[:cart_id])
        user = cart.user
        cart_item.destroy

        options = {
            include: [:carts, :cart_items]
        }

        render json: UserSerializer.new(user, options)
    end
end
