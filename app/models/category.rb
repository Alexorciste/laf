class Category < ApplicationRecord
    has_many :photos
    has_one_attached :image
end
