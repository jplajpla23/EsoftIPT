class UsersController < ApplicationController
    
    def indexLogSensor
     render "home/indexLogSensor"
    end
    
    def new
    end
    
    def create
        @users = User.new(params[:user])
        
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
      @users= User.all
       @title = 'Shattered View: A Novel on Rails'
    render 'users/index',
    end

end
