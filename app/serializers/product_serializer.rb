class ProductSerializer < ActiveModel::Serializer
  attributes :id, :brand_name, :product_name, :description, :category_id, :image_url, :website
  # has_many :favorites
  # belongs_to :categories
end
