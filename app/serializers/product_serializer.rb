class ProductSerializer < ActiveModel::Serializer
  attributes :id, :brand_name, :product_name, :description, :category, :image_url, :website
  has_many :favorites
end
