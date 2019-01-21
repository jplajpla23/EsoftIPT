require 'test_helper'
 class SensorHistorysControllerTest < ActionDispatch::IntegrationTest

  test "should save sensor" do
    sensorH = sensor_histories(:one)
    assert sensorH.save
  end

  
  test "should not save sensor without nothing" do
    sensorH = SensorHistory.new
    assert_not sensorH.save
  end

  
  test "should not save sensor without id" do
    sensorH = sensor_histories(:two)
    assert_not sensorH.save
  end

  
  test "should not save sensor without value" do
    sensorH = sensor_histories(:three)
    assert_not sensorH.save
  end

  test "should not save sensor without time" do
    sensorH = sensor_histories(:four)
    assert_not sensorH.save
  end
  
  test "should not save sensor without sensor_id" do
    sensorH = sensor_histories(:five)
    assert_not sensorH.save
  end

end