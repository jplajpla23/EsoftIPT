require 'test_helper'
 class SensorsControllerTest < ActionDispatch::IntegrationTest
  test "should get redirect" do
    get '/mySensors'
    assert_response :redirect
  end

  test "should not save sensor without nothing" do
    sensor = Sensor.new
    assert_not sensor.save
  end

  test "should save sensor" do
    sensor = sensors(:one)
    assert sensor.save
  end

  test "should update sensor" do
    sensor= Sensor.find(sensors(:one))
    sensor.min=10
    assert sensor.save
  end

  test "should delete sensor" do
    sensor= Sensor.find(sensors(:one))
    assert sensor.destroy!
  end

 end