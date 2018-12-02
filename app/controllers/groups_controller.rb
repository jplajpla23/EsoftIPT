class GroupsController < ApplicationController
	

	def all
		@groups=Group.where(user_id:1)#id=1 provisorio
		render "groups_controller/index"
	end

	def new
		#criar grupo POST
		group = Group.new
		group.user_id=1; #provisorio
		group.description=params[:desc]
		group.save
		redirect_to mygroups_path
	end

	def edit
		@group = Group.find(params[:id])
		render "groups_controller/editGroup"
	end

	def editPost
		@group= Group.find(params[:id])
		@group.description= params[:desc]
		@group.save
		redirect_to mygroups_path
	end

	def delete
		g = Group.find(params[:id])
		g.destroy
		redirect_to mygroups_path
	end
	
end
