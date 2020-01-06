class CreateConditions < ActiveRecord::Migration[6.0]
  def change
    create_table :conditions do |t|
      t.references :location, null: false, foreign_key: true
      t.datetime :observation_time
      t.float :temperature_value
      t.float :wind_speed
      t.string :wind_speed_unit
      t.integer :wind_direction
      t.float :windgust_speed
      t.string :windgust_speed_unit
      t.integer :relative_humidity
      t.integer :pressure
      t.string :pressure_unit

      t.timestamps
    end
  end
end
