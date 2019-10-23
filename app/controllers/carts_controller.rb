class CartsController < ApplicationController
    def index
        carts = Cart.all
        render json: CartSerializer.new(carts)
    end

    def show
        cart = Cart.find_by(id: params[:id])
        render json: CartSerializer.new(cart)
    end

    def update
        cart = Cart.find_by(id: params[:id])
        user = cart.user
        cart.checkout = true
        cart.save

        new_cart = Cart.create(user_id: user.id)

        options = {
            include: [:carts]
        }

        render json: UserSerializer.new(user, options)
    end
end
