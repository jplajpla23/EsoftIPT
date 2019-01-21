require 'test_helper'
 class SensorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get '/mySensors'
    assert_response :success
  end

  test "should not save sensor without nothing" do
    sensor = Sensor.new
    assert_not sensor.save
  end

  test "should save sensor" do
    sensor = sensors(:one)
    assert sensor.save
  end

 end