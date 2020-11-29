class Listing < ApplicationRecord
    belongs_to :user 
    has_many :users, through: :carts
end
