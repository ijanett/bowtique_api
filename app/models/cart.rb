class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_bowties
  has_many :bowties, through: :cart_bowties
end
