class SensorsController < ApplicationController
	def all
		render plain: "Nao implementado"
	end
	
	def create
		@sensor = Sensor.new(params[:sensor])
		if @sensor.save
		  flash[:success] = "Object successfully created"
		  redirect_to @sensor
		else
		  flash[:error] = "Something went wrong"
		  render 'new'
		end
	end
	
	def destroy
		@sensor = Sensor.find(params[:id])
		if @object.destroy
			flash[:success] = 'Object was successfully deleted.'
			redirect_to sensors_path
		else
			flash[:error] = 'Something went wrong'
			redirect_to sensors_path
		end
	end
	def update
		@sensor = Sensor.find(params[:id])
		if @sensor.update(sensor_params)
		  flash[:success] = "Object was successfully updated"
		  redirect_to @sensor
		else
		  flash[:error] = "Something went wrong"
		  render 'edit'
		end
	end
	
	
	
	def new
		render plain: "Nao implementado"
	end
	def edit
		render plain: "Nao implementado"
	end
	def editPost
		render plain: "Nao implementado"
	end
	def delete
		render plain: "Nao implementado"
	end
end