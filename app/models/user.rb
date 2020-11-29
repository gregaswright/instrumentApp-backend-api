class User < ApplicationRecord
    has_many :listings
    has_many :listings, through: :carts
end
