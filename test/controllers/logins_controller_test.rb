require 'test_helper'

class LoginsControllerTest < ActionDispatch::IntegrationTest

	test "get page" do
		get '/login'
		assert_response :redirect
	end
end
