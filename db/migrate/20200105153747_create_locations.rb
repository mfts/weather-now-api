class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :city
      t.string :country
      t.integer :location_key
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
    add_index :locations, :location_key, unique: true
  end
end
