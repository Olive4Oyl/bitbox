class UsersController < ApplicationController
	before_action :set_user
	before_action :set_subs

	def show
    	respond_to do |f|
	      f.html { render :show }
	      f.json { render json: @user }
    	end
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

	def set_subs
		@subs = Subscription.find_by(id: params[:id])
	end

end
