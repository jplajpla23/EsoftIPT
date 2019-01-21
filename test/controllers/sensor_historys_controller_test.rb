require 'test_helper'
 class SensorHistorysControllerTest < ActionDispatch::IntegrationTest

  test "should save sensor" do
    sensor = sensor_histories(:one)
    assert sensor.save
  end

  
  test "should not save sensor without nothing" do
    sensor = SensorHistory.new
    assert_not sensor.save
  end

  
  test "should not save sensor without id" do
    sensor = sensor_histories(:two)
    assert_not sensor.save
  end

  
  test "should not save sensor without value" do
    sensor = sensor_histories(:three)
    assert_not sensor.save
  end

  test "should not save sensor without time" do
    sensor = sensor_histories(:four)
    assert_not sensor.save
  end

end