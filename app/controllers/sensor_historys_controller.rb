class SensorHistorysController < ApplicationController
    def show
        @sensor=Sensor.find(params[:id])
        @sensor_history=@sensor.Sensor_history.all
    end

    def new
        @ = .new
    end
    
    
    def index
        @sensor_history=Sensor_history.all
    end

    def create
        @sensor=Sensor.find(params[:id])
        @sensor_history=@sensor.sensor_historys.create(sensor_history_params)
        if @sensor_history.save
            redirect_to @sensor
        else
            render 'index'
        end
    end

    def update
    end

    def destroy
        @sensor_history=Sensor_history.find(params[:id])
        @sensor_history.destroy

        redirect_to sensor_path
    end

    private
    def sensor_history_params
        params.require(:sensor_history).permit(:sensors_idsensors, :value, :time, :sensors_historycol)
    end
end
