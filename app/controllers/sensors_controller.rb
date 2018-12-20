class SensorsController < ApplicationController
	def all
		if session[:user_id]==nil
			redirect_to login_path
			return
		end
		id=session[:user_id]
		@sensor=Sensor.where(idusers: id)
		@groups=Group.where(user_id: id)
		render "sensors/index"
	end
	
	def create
		if session[:user_id]==nil
			redirect_to login_path
			return
		end
		sensor = Sensor.new
		sensor.idusers=session[:user_id]
		sensor.sensor_desc=params[:desc]
		sensor.mac=params[:mac]
		sensor.max=params[:max]
		sensor.min=params[:min]
		sensor.groups_id=params[:group]
		sensor.save
		#redirect_to mySensors_path
		if sensor.save
		  flash[:success] = "Object successfully created"
		  redirect_to mySensors_path
		else
		  flash[:error] = "Something went wrong"
		  redirect_to mySensors_path
		end
	end
	
	def delete
		if session[:user_id]==nil
			redirect_to login_path
			return
		end
		@sensor = Sensor.find(params[:id])
		id=@sensor.id
		@sensor_history=SensorHistory.where(sensors_id: id)
		unless @sensor_history
			@sensor_history.destroy
		end
		@alerts=Alert.where(sensors_id: id)
		unless @alerts
			@alerts.destroy
		end
		@sensor.destroy
		if @sensor.destroy
			flash[:success] = 'Object was successfully deleted.'
			redirect_to mySensors_path
		else
			flash[:error] = 'Something went wrong'
			redirect_to mySensors_path
		end
	end

	def editPost
		if session[:user_id]==nil
			redirect_to login_path
			return
		end
		@sensor= Sensor.find(params[:id])
		@sensor.sensor_desc= params[:desc]
		@sensor.mac=params[:mac]
		@sensor.max=params[:max]
		@sensor.min=params[:min]
		@sensor.groups_id=params[:group]
		@sensor.save
		if @sensor.save
		  flash[:success] = "Object was successfully updated"
		  redirect_to mySensors_path
		else
		  flash[:error] = "Something went wrong"
		  render 'sensors/editSensor'
		end
	end
	
	
	
	def new
		render plain: "Nao implementado"
		#caminho da view para executar o create
	end
	def edit
		if session[:user_id]==nil
			redirect_to login_path
			return
		end
		id=session[:user_id]
		@sensor = Sensor.find(params[:id])
		@groups=Group.where(user_id: id)
		render "sensors/editSensor"
	end
end