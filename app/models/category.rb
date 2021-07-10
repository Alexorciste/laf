class Category < ApplicationRecord
    has_many :photos, dependent: :destroy
    has_one_attached :image
end
