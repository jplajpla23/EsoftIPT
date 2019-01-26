require 'test_helper'
require 'bcrypt'
class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get redirect" do
    get '/users'
    assert_response :redirect
  end

  test "should not save user without nothing" do
    user = User.new
    user.password="teste"
    assert_not user.valid?
  end

  test "should save user" do
    user = users(:one)
    user = User.new
     user.role=0
      user.name="NomedeTeste"
      user.email="teste@example.com"
      user.password="123123123"
    assert user.save
  end

  test "should update user" do
    user= User.last
    user.name="teste"
    assert true
  end

  test "should delete user" do
    user= User.last
    groups=Group.where(user_id: user.id)
    groups.each do |i| 
      sensors=Sensor.where(groups_id: i.id)
      sensors.destroy_all
    end
    groups.destroy_all
   assert user.destroy!
  end

end
