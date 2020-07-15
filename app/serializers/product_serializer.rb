class ProductSerializer < ActiveModel::Serializer
  attributes :id, :brand_name, :product_name, :description, :category, :image_url, :website
end
