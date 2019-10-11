class Bowtie < ApplicationRecord
    has_many :cart_bowties
    has_many :carts, through: :cart_bowties
end
