class ErroLoginPasswordsController < ApplicationController
  before_action :set_erro_login, only: [:show, , :destroy]

  # GET /erro_login
  # GET /erro_login.json
  def index
    @erro_login = ErroLogin.all
  end

  # GET /erro_login/new
  def new
    @erro_login = ErroLogin.new
  end

  # POST /erro_login
  # POST /erro_login.json
  def create
    @erro_login = ErroLogin.new(erro_login_params)

    respond_to do |format|
      if @erro_login.save
        format.html { redirect_to @erro_login, notice: 'Erro login password was successfully created.' }
        format.json { render :show, status: :created, location: @erro_login }
      else
        format.html { render :new }
        format.json { render json: @erro_login.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /erro_login/1
  # DELETE /erro_login/1.json
  def destroy
    @erro_login.destroy
    respond_to do |format|
      format.html { redirect_to erro_login_url, notice: 'Erro login password was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_erro_login
      @erro_login = ErroLogin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def erro_login_params
      params.require(:erro_login).permit(:id, :pagina, :erro)
    end
end
