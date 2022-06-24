class AddGalleryOwnerToPrivatecats < ActiveRecord::Migration[6.0]
  def change
    add_reference :privatecats, :gallery_owner
    add_foreign_key :privatecats, :users, column: :gallery_owner_id
  end
end
