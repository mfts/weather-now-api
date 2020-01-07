class ConditionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :observation_time, :temperature_value
end
