class User < ApplicationRecord
    has_many :carts
    has_many :cart_items, through: :carts
    has_many :items, through: :cart_items
    validates :username, presence: true, uniqueness: true
    validates :password, presence: true

    def open_cart
        if self.carts.where('carts.checkout = ?', false).length == 0
            false
        else
            true
        end
    end

    def orders
        self.carts.where('carts.checkout = ?', true)
    end
end
