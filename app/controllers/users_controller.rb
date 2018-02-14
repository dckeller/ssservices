class UsersController < ApplicationController

	def index
		@users = User.all("created_at DESC")
	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(params[:user])
	end

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.update(params[:user])
	end

	def delete
		@user = User.find(params[:id])
	end      
end
