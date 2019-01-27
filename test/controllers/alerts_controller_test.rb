require 'test_helper'

class AlertsControllerTest < ActionDispatch::IntegrationTest
	test "get page" do
		get '/alerts'
		assert_response :redirect
	end

	test "delete alert" do
		a= Alert.last
  		assert a.destroy!
	end

	test "new alert" do
		alert = Alert.new
    	alert.message="menssagem teste"
    	alert.sensors_id= Sensor.last.id
    	alert.min=0
    	alert.max=2
    	assert alert.save
	end

	test "update alert" do 
		a=Alert.last
		a.min=1
		assert_not a.save
	end

end