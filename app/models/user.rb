class User < ApplicationRecord
    has_many :carts

    validates :username, presence: true, uniqueness: true
    validates :password, presence: true
end
