class UsersController < ApplicationController
  require 'bcrypt'
  def indexLogSensor
    if session[:user_id]==nil
    else
      @isAdmin= User.find(session[:user_id]).role
      render "home/dashboard"
      return
    end
    render "home/indexLogSensor"

  end
  def new
  end

  def create
    @users = User.new(params[:user])
    @isAdmin= User.find(session[:user_id]).role
    if @users.save
      flash[:success] = "Object successfully created"
      redirect_to @users
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def update
    @users = User.find(params[:id])
    @isAdmin= User.find(session[:user_id]).role
    if @users.update_attributes(params[:users])
      flash[:success] = "Object was successfully updated"
      redirect_to @users
    else
      flash[:error] = "Something went wrong"
      render 'edit'
    end
  end

  def destroy
    @users = Object.find(params[:id])
    @isAdmin= User.find(session[:user_id]).role
    if @users.destroy
      flash[:success] = 'Object was successfully deleted.'
      redirect_to objects_url
    else
      flash[:error] = 'Something went wrong'
      redirect_to objects_url
    end
  end

  def show

  end

  def edit
  end

  def index
    @users = User.all

  end
  def login
    if(session[:user_id] ==nil)

      render 'users/login'
    end
  end

  def loginCheck
    if(session[:user_id] ==nil)

      @user = User.find_by_email(params[:email])
      if @user.password == params[:password]
        session[:user_id] = @user.id
        redirect_to home_path
      else
        redirect_to login_path
      end
    end

  end


  def logout
    session.delete(:user_id)
    redirect_to home_path
  end

  def register
    if(session[:user_id] ==nil)

      render 'users/register'
    end

  end

  def registerSave
    if(session[:user_id] ==nil)

      @user = User.new
      @user.role=0
      @user.name=params[:name]
      @user.email=params[:email]
      @user.password= params[:password]
      @user.save!
      redirect_to login_path
    end

  end


end
