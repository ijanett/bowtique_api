class UsersController < ApplicationController
    def index
        users = User.all
        render json: UserSerializer.new(users)
    end

    def show
        user = User.find_by(id: params[:id])
        options = {
            include: [:carts]
        }
        render json: UserSerializer.new(user, options)
    end

    def create
        user = User.find_or_create_by(user_params)
        if user.open_cart == false
            cart = Cart.create(user_id: user.id)
        end
        
        render json: UserSerializer.new(user)
    end

    private

    def user_params
        params.require(:user).permit(:username)
    end
end
