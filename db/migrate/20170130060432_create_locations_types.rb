class CreateLocationsTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :locations_types do |t|
      t.references :location, foreign_key: true
      t.references :type, foreign_key: true
    end
  end
end
