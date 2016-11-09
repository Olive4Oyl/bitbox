class UsersController < ApplicationController
	before_action :set_user

	def show
	end

	def edit 
	end

	def update
		if user_signed_in? && current_user == @user
			current_user.update(user_params)
		end
		redirect_to user_path(current_user) 
	end

	def destroy
	end

	private

	def set_user
		@user = User.find_by(id: params[:id])
	end

	def user_params
		params.require(:user).permit(:name)
	end


end
