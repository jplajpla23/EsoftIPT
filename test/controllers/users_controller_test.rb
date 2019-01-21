require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get redirect" do
    get '/users'
    assert_response :redirect
  end

  test "should not save user without nothing" do
    user = User.new
    assert_not user.save
  end

  test "should save user" do
    user = users(:one)
    assert user.save
  end

  test "should update user" do
    user= User.last
    user.name="teste"
    assert user.save
  end

  test "should delete user" do
    user= User.last
    assert user.destroy!
  end

end
