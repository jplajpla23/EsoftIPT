require 'test_helper'

class AlertControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get alert_index_url
    assert_response :success
  end

end
