require 'test_helper'

class LoginsControllerTest < ActionDispatch::IntegrationTest

	test "get page" do
		get '/login'
		assert_response :ok
	end
	test "get page register" do
		get '/register'
		assert_response :ok
	end
end
