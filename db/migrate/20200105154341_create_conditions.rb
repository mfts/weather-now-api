class CreateConditions < ActiveRecord::Migration[6.0]
  def change
    create_table :conditions do |t|
      t.references :location, null: false, foreign_key: true
      t.datetime :observation_time
      t.float :temperature_value
      t.float :wind_speed
      t.integer :wind_direction
      t.float :windgust_speed
      t.integer :relative_humidity
      t.integer :pressure

      t.timestamps
    end
  end
end
