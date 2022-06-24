class Privatecat < ApplicationRecord
    has_many :private_assigns
    has_many_attached :images
    has_many :owners, class_name: "User", foreign_key: 'gallery_owner_id'
end


