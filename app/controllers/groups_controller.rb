class GroupsController < ApplicationController
	

	def all
		if session[:user_id]==nil
			redirect_to login_path
			return
		end
		@isAdmin= User.find(session[:user_id]).role
		@sensorsCount= Array.new
		id=session[:user_id]
		@groups=Group.where(user_id:id)#id=1 provisorio
		@groups.each do |g|
			@sensorsCount[g.id]=Sensor.where(groups_id: g.id).count()
		end

		render "groups_controller/index"
	end

	def new
		#criar grupo POST
		if session[:user_id]==nil
			redirect_to login_path
			return
		end
		@isAdmin= User.find(session[:user_id]).role
		id=session[:user_id]
		group = Group.new
		group.user_id=id; #provisorio
		group.description=params[:desc]
		group.save
		redirect_to mygroups_path
	end

	def edit
		if session[:user_id]==nil
			redirect_to login_path
			return
		end
		@isAdmin= User.find(session[:user_id]).role
		@group = Group.find(params[:id])
		render "groups_controller/editGroup"
	end

	def editPost
		if session[:user_id]==nil
			redirect_to login_path
			return
		end
		@isAdmin= User.find(session[:user_id]).role
		@group= Group.find(params[:id])
		@group.description= params[:desc]
		@group.save
		redirect_to mygroups_path
	end

	def delete
		if session[:user_id]==nil
			redirect_to login_path
			return
		end
		@isAdmin= User.find(session[:user_id]).role
		g = Group.find(params[:id])
		sensorsCount=Sensor.where(groups_id: g.id).count()
		if sensorsCount==0
			g.destroy
		end
		redirect_to mygroups_path
	end
	
end
