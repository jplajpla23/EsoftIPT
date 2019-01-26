class ErroLoginPasswordsController < ApplicationController
  before_action :set_erro_login_password, only: [:show, :edit, :update, :destroy]

  # GET /erro_login_passwords
  # GET /erro_login_passwords.json
  def index
    @erro_login_passwords = ErroLoginPassword.all
  end

  # GET /erro_login_passwords/1
  # GET /erro_login_passwords/1.json
  def show
  end

  # GET /erro_login_passwords/new
  def new
    @erro_login_password = ErroLoginPassword.new
  end

  # GET /erro_login_passwords/1/edit
  def edit
  end

  # POST /erro_login_passwords
  # POST /erro_login_passwords.json
  def create
    @erro_login_password = ErroLoginPassword.new(erro_login_password_params)

    respond_to do |format|
      if @erro_login_password.save
        format.html { redirect_to @erro_login_password, notice: 'Erro login password was successfully created.' }
        format.json { render :show, status: :created, location: @erro_login_password }
      else
        format.html { render :new }
        format.json { render json: @erro_login_password.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /erro_login_passwords/1
  # PATCH/PUT /erro_login_passwords/1.json
  def update
    respond_to do |format|
      if @erro_login_password.update(erro_login_password_params)
        format.html { redirect_to @erro_login_password, notice: 'Erro login password was successfully updated.' }
        format.json { render :show, status: :ok, location: @erro_login_password }
      else
        format.html { render :edit }
        format.json { render json: @erro_login_password.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /erro_login_passwords/1
  # DELETE /erro_login_passwords/1.json
  def destroy
    @erro_login_password.destroy
    respond_to do |format|
      format.html { redirect_to erro_login_passwords_url, notice: 'Erro login password was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_erro_login_password
      @erro_login_password = ErroLoginPassword.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def erro_login_password_params
      params.require(:erro_login_password).permit(:id, :erro, :mensagem)
    end
end
