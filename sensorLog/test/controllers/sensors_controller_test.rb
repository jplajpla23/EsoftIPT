require 'test_helper'

class SensorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sensors_index_url
    assert_response :success
  end

end
