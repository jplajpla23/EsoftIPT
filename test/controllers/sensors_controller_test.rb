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
    sensor=Sensor.new
    sensor.idusers=users(:one)
    sensor.sensor_desc="des"
    sensor.mac="61-A3-F5-45-50-8B"
    sensor.max="12"
    sensor.min="1"
    sensor.groups_id=groups(:one)
    assert sensor.save
  end

  test "should update sensor" do
    sensor= Sensor.last
    sensor.min=10
    assert sensor.save
  end

  test "should delete sensor" do
    sensor= Sensor.last
    assert sensor.destroy!
  end

 end