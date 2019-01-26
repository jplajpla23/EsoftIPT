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

  test "save user" do

    user = User.new
    user.role=0
    user.name="joaoAgostinho"
    user.email="jplajpla23@gmail.com"
    user.password="123123213"
    assert_not user.save
  end

  test "should update user" do
    user= user(:one)
    user.name="teste"
    assert user.save
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
