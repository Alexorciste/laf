class AddSubCategoryToPhotos < ActiveRecord::Migration[6.0]
  def change
    add_column :photos, :sub_category, :string
  end
end
