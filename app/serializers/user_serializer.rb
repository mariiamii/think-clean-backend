class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username
  # has_many :favorites
  has_many :products, through: :favorites
end
