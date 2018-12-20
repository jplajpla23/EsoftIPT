class AlertsController < ApplicationController
  def all
    #procurar todos os alertas e agrupar por sensor

    if session[:user_id]==nil

    else
      @sensors=Sensor.where(idusers: session[:user_id])
      @sensors.each do |s|
        @alerts= Alert.where(sensors_id: s.id)
      end
      render "alerts/index" 
      return
    end
    redirect_to some_url login_path


    
  end


  def save
    render plain: "Nao implementado"
  end


  def edit
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