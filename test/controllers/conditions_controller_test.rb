require 'test_helper'

class ConditionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @condition = conditions(:one)
  end

  test "should get index" do
    get conditions_url, as: :json
    assert_response :success
  end

  test "should create condition" do
    assert_difference('Condition.count') do
      post conditions_url, params: { condition: { location_id: @condition.location_id, observation_time: @condition.observation_time, pressure: @condition.pressure, relative_humidity: @condition.relative_humidity, temperature_value: @condition.temperature_value, wind_direction: @condition.wind_direction, wind_speed: @condition.wind_speed, windgust_speed: @condition.windgust_speed } }, as: :json
    end

    assert_response 201
  end

  test "should show condition" do
    get condition_url(@condition), as: :json
    assert_response :success
  end

  test "should update condition" do
    patch condition_url(@condition), params: { condition: { location_id: @condition.location_id, observation_time: @condition.observation_time, pressure: @condition.pressure, relative_humidity: @condition.relative_humidity, temperature_value: @condition.temperature_value, wind_direction: @condition.wind_direction, wind_speed: @condition.wind_speed, windgust_speed: @condition.windgust_speed } }, as: :json
    assert_response 200
  end

  test "should destroy condition" do
    assert_difference('Condition.count', -1) do
      delete condition_url(@condition), as: :json
    end

    assert_response 204
  end
end
