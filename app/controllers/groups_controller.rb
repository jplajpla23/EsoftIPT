class GroupsController < ApplicationController
	

	def all
		if session[:user_id]==nil
			redirect_to login_path
			return
		end
		id=session[:user_id]
		@groups=Group.where(user_id:id)#id=1 provisorio
		render "groups_controller/index"
	end

	def new
		#criar grupo POST
		if session[:user_id]==nil
 			redirect_to login_path
 			return
 		end
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
		@group = Group.find(params[:id])
		render "groups_controller/editGroup"
	end

	def editPost
		if session[:user_id]==nil
 			redirect_to login_path
 			return
 		end
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
		g = Group.find(params[:id])
		g.destroy
		redirect_to mygroups_path
	end
	
end
