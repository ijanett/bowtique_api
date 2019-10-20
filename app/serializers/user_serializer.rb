class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :password, :orders
  has_many :carts
end
