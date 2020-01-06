require 'json'
require 'net/http'

namespace :conditions do
  desc "Create Conditions from AccuWeather API for Helsinki"
  task create_condition: :environment do
    base_url = 'http://dataservice.accuweather.com/currentconditions/v1'
    secret = Rails.application.credentials.ACCUWEATHER_API_KEY
    locationKey = Location.first.location_key
    url = base_url + '/' + locationKey.to_s + '?apikey=' + secret.to_s + '&details=true'

    resp = Net::HTTP.get_response(URI.parse(url))
    data = JSON.parse(resp.body)[0]

    Condition.create(location_id: 1, 
                     observation_time: data["LocalObservationDateTime"], 
                     temperature_value: data["Temperature"]["Metric"]["Value"],
                     wind_speed: data["Wind"]["Speed"]["Metric"]["Value"],
                     wind_speed_unit: data["Wind"]["Speed"]["Metric"]["Unit"],
                     wind_direction: data["Wind"]["Direction"]["Degrees"], 
                     windgust_speed: data["WindGust"]["Speed"]["Metric"]["Value"],
                     windgust_speed_unit: data["WindGust"]["Speed"]["Metric"]["Unit"], 
                     relative_humidity: data["RelativeHumidity"],
                     pressure: data["Pressure"]["Metric"]["Value"],
                     pressure_unit: data["Pressure"]["Metric"]["Unit"])
  end
end