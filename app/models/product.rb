class Product < ApplicationRecord
    has_many :favorites
    has_many :users, through: :favorites
    belongs_to :category
end
