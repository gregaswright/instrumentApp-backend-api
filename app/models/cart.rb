class Cart < ApplicationRecord
    belongs_to :listing
    belongs_to :cart
end
