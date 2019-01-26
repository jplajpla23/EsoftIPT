require 'test_helper'

class GroupsControllerTest < ActionDispatch::IntegrationTest
   test "get page" do
     get '/mySensors'
    assert_response :redirect
   end

   test "delete group and sensors" do
    sensor= Sensor.last
    group=groups.last
    sensors=Sensor.where(groups_id: group.id)
      sensors.destroy_all
    assert group.destroy!
  end

end
