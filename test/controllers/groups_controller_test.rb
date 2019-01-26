require 'test_helper'

class GroupsControllerTest < ActionDispatch::IntegrationTest
   test "get page" do
     get '/mySensors'
    assert_response :redirect
   end
end
