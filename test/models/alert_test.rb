require 'test_helper'

class AlertTest < ActiveSupport::TestCase
  test "should not save alert with out a sensor, min, max, message" do 
    alert = Alert.new
    alert.sensors_id = Sensor.all.first.id
    assert_not alert.save, "Saved the alert with out a senor, min, max, message"
  end
end