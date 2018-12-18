class ApiController < ActionController::API
	

	def sensorSave
		#guardar a entrada do historico dos sensores se o mac existir nos sensores
		# no body do request esta o json do seguinte formato {"str":"MAC_/temperature"}
		a= params[:str].split("_/")
		val= a[1]
		macAd= a[0]
		render plain: "ok"

		@sensor=Sensors.where(mac: macAd)
		id=@sensor.id

		SensorHistory.create(value: val, time: Time.now, sensors_id:id )
		
	end

end
