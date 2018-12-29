class UsersController < ApplicationController
  require 'bcrypt'
  def indexLogSensor
    if session[:user_id]==nil
    else
      @isAdmin= User.find(session[:user_id]).role==1
      render "home/dashboard"
      return
    end
    render "home/indexLogSensor"

  end

  def delete
    if session[:user_id]==nil
      redirect_to login_path
      return
    end
    @isAdmin= User.find(session[:user_id]).role==1
    if !@isAdmin
      redirect_to home_path
      return
    end
    u = User.find(params[:id])
    u.destroy!
    redirect_to users_path
    return
  end

  def editSave
    if session[:user_id]==nil
      redirect_to login_path
      return
    end
    @isAdmin= User.find(session[:user_id]).role==1
    if !@isAdmin
      redirect_to home_path
      return
    end
    id= params[:id]
    name=params[:name]
    email=params[:email]
    role=params[:role]
    @user= User.find(params[:id])
    @user.name= params[:name]
    @user.email= params[:email]
    @user.role= params[:role]
    @user.save
    redirect_to users_path
    return
  end

  def edit
    if session[:user_id]==nil
      redirect_to login_path
      return
    end
    @isAdmin= User.find(session[:user_id]).role==1
    if !@isAdmin
      redirect_to home_path
      return
    end
    @user=User.find(params[:id])
  end

  def index
    if session[:user_id]==nil
      redirect_to login_path
      return
    end
    @isAdmin= User.find(session[:user_id]).role==1
    if !@isAdmin
      redirect_to home_path
      return
    end
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
