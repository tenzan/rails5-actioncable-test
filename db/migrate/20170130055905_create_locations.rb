class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.integer :code
      t.string :name

      t.timestamps
    end
    add_index :locations, :name, unique: true
  end
end
