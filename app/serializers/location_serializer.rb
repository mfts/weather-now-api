class LocationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :city, :country, :latitude, :longitude

  # Conditions will only be serialized if the record has any associated conditions
  has_many :conditions, if: Proc.new { |record| record.conditions.any? }
end
