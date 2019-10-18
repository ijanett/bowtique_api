class CartSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :checkout, :total, :order_date, :items
  belongs_to :user
  has_many :cart_items
  has_many :items, through: :cart_items
end
