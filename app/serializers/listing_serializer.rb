class ListingSerializer < ActiveModel::Serializer
  attributes :id, :brand, :instrument_type, :weight, :age, :used, :price, :img
  belongs_to :user
end
