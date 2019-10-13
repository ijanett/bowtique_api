class Item < ApplicationRecord
    has_many :cart_items, dependent: :destroy
    has_many :carts, through: :cart_items

    enum size: [ :SM, :LG ]
end
