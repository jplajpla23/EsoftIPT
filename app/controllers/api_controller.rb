class ApiController < ActionController::API
	

	def sensorSave
		#guardar a entrada do historico dos sensores se o mac existir nos sensores
		# no body do request esta o json do seguinte formato {"str":"MAC_/temperature"} 
		val= params[:val]
		macAd= params[:mac]
		@sensor=Sensor.where(mac: macAd).first
		id=@sensor.id
		idusers = @sensor.idusers
		@user = User.where(id: idusers).first

		alerts = Alert.where(sensors_id: id)

		for alert in alerts
			if Float(val) < Float(alert.min) || Float(val) > Float(alert.max)
				UserMailer.sensor(@user, macAd, val, alert.message).deliver_later
			end
		end

		SensorHistory.create(value: Float(val), time: Time.now, sensors_id:id )
		
	end

end
