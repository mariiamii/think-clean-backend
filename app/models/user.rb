class User < ApplicationRecord
    has_many :favorites
    has_many :products, through: :favorites

    validates_uniqueness_of :username
    has_secure_password
end
