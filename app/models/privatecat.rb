class Privatecat < ApplicationRecord
    has_many_attached :images
    belongs_to :gallery_owner, class_name: "User", foreign_key: 'gallery_owner_id'
end


