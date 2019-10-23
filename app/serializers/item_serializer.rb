class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :size, :price, :image, :cart_items
  has_many :cart_items
  has_many :carts, through: :cart_items
end
