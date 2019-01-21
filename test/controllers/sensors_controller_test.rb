require 'test_helper'
 class SensorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sensors_index_url
    assert_response :success
  end

  test "should not save sensor without nothing" do
    sensor = Sensor.new
    assert_not sensor.save
  end

 end