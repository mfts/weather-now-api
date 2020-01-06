class AddPrecipitationToCondition < ActiveRecord::Migration[6.0]
  def change
    add_column :conditions, :precipitation_value, :float
    add_column :conditions, :precipitation_value_unit, :string
    add_column :conditions, :has_precipitation, :boolean
    add_column :conditions, :precipitation_type, :string
  end
end
