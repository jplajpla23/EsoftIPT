class ApiController < ActionController::API
	

	def sensorSave
		#guardar a entrada do historico dos sensores se o mac existir nos sensores
		# no body do request esta o json do seguinte formato {"str":"MAC_/temperature"} 
		val= params[:val]
		macAd= params[:mac]
		@sensor=Sensor.where(mac: macAd).first
		id=@sensor.id
		@user = User.find(session[:user_id])
		UserMailer.with(user: @user).welcome_email.deliver_later
		SensorHistory.create(value: val, time: Time.now, sensors_id:id )
		
	end

end
