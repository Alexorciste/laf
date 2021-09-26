class CreatePrivatecats < ActiveRecord::Migration[6.0]
  def change
    create_table :privatecats do |t|
      t.string :name

      t.timestamps
    end
  end
end
