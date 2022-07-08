class AddCatNameForUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :catname, :string
  end
end
