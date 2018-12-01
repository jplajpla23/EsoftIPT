class GroupsController < ApplicationController
	
	def show
		# mostrar um grupo
		@group=Group.find(params[:id])
	end

	def new
		#criar grupo
		@ = Group.new
	end

	def index
		#mostrar todos
		@groups=Group.all
	end

	def create
		#criar grupo POST
	end

	def update
		#update grupo
	end

	def updatePOST
		#update grupo POST
	end

	def delete
		#delete
	end
end
