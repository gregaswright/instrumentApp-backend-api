class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :email, :wallet
  has_many :listings
end
