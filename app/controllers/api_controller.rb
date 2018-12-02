class ApiController < ActionController::API
	

	def sensorSave
		#guardar a entrada do historico dos sensores se o mac existir nos sensores
		# no body do request esta o json do seguinte formato {"str":"MAC_/temperature"}
		a= params[:str].split("_/")
		val= a[1]
		mac= a[0]
		render plain: "ok"
	end

end
