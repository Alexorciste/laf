class CreatePrivateAssigns < ActiveRecord::Migration[6.0]
  def change
    create_table :private_assigns do |t|
      t.references :user, null: false, foreign_key: true
      t.references :privatecat, null: false, foreign_key: true
      t.string :name
      t.string :authorize

      t.timestamps
    end
  end
end
