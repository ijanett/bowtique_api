class CartItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :created_at, :cart, :item
  belongs_to :item
  belongs_to :cart
end
