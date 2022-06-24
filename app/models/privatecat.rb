class Privatecat < ApplicationRecord
    has_many :private_assigns
    has_many_attached :images
end


