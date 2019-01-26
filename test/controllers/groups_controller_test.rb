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
test "new group" do
    s = Group.new
    s.user_id=users(:one)
    s.description="teste create"
    assert s.save
end

test "update group" do 
  s=groups(:one)
  s.description="testes"
  assert s.save
end

test "update sensor" do
  s= Sensor.last
  s.min=0
  assert s.save
end
end
