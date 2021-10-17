class AddOwnerToPrivateAssigns < ActiveRecord::Migration[6.0]
  def change
    add_column :private_assigns, :owner, 

  end
end
