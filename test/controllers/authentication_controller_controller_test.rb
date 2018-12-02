require 'test_helper'

class AuthenticationControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get authenticate" do
    get authentication_controller_authenticate_url
    assert_response :success
  end

end
