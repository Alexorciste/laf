class AddAdministratorToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :administrator, foreign_key: { to_table: :users }
  end
end
