class AlertsController < ApplicationController
  def all
    #procurar todos os alertas e agrupar por sensor

    if session[:user_id]==nil

    else
      @isAdmin= User.find(session[:user_id]).role
      #@sensors=Sensor.where(idusers: session[:user_id])
      @alerts=Alert.all
      @alerts.each do |i|
        sensor=Sensor.find(i.sensors_id)
        i.sensor_name= sensor.sensor_desc
        i.user_id= sensor.idusers
      end 
      render "alerts/index" 
      return
    end
    redirect_to login_path


    
  end


  def save
    if session[:user_id]==nil
      redirect_to login_path
      return
    end
    alert = Alert.new
    alert.message=params[:message]
    alert.sensors_id=params[:sensorId]
    alert.min=params[:min]
    alert.max=params[:max]
    alert.save
    sensor = Sensor.find(alert.sensors_id)
    user = User.find(sensor.idusers)
    UserMailer.alert(user, sensor.mac, alert.message).deliver_later    
    redirect_to myAlerts_path
  end

  def edit
    if session[:user_id]==nil
      redirect_to login_path
      return
    end
    @alert = Alert.find(params[:id])
    render "alerts/editAlerts"
  end

  def editPost
    if session[:user_id]==nil
      redirect_to login_path
      return
    end
    @alert= Alert.find(params[:sensorId])
    @alert.message= params[:message]
    @alert.min= params[:min]
    @alert.max= params[:max]
    @alert.save
    redirect_to myAlerts_path
  end

  def delete
    if session[:user_id]==nil
      redirect_to login_path
      return
    end
    alert=Alert.find(params[:id])
    alert.destroy!
    redirect_to myAlerts_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alert
      @alert = Alert.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alert_params
      params.require(:alert).permit(:sensor_idsensors, :message, :min, :max, :created_at, :updated_at)
    end
  end