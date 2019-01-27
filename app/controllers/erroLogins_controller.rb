class ErroLoginsController < ApplicationController
  before_action :set_erroLogin, only: [:show]

  # GET /erro_login
  # GET /erro_login.json
  def show
    redirect_to erroLogin_path
  end
  
  def create
    ErroLogin.create(erroLogin_params)   
  end
  
  # GET /erro_login/new
  def new
    if session[:user_id]==nil
      render "erroLogin_controller/show"
      return
    end
    
  end

  def voltar
    @erroLogin = ErroLogin.new(erroLogin_params)

    respond_to do |format|
        format.html { redirect_to @erroLogin, notice: 'Erro login.' }
        format.json { render :show, status: :created, location: @erroLogin }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_erroLogin
      @erroLogin = ErroLogin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def erroLogin_params
      params.require(:erroLogin).permit(:id, :pagina, :erro)
    end
