class UsersController < ApplicationController
	def index
		@user = User.all 
		render :index
	end

	def new
		@user = User.new
		render :new
	end

	def create 
		user_params = param.require(:user).permit(:first_name, :last_name, :email, :password)
		@user = User.create(user_params)
		redirect_to "/users"
	end 





end
