class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :orders, :cart_items
  has_many :carts
  has_many :cart_items, through: :carts
end
