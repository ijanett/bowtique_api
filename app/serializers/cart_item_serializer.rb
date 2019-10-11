class CartItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :created_at
  belongs_to :item
  belongs_to :cart
end
