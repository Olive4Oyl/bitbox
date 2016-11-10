class SubscriptionsController < ApplicationController
	before_action :set_subs, only: [:show, :edit, :update, :destroy]
	before_action :set_user, only: [:show, :edit, :update, :destroy]

	def new
		@subs = Subscription.new
		@subs.build_box
	end

	def create
		@subs = Subscription.new(subs_params)
		if @subs.valid?
	 		@subs.save
	 		current_user.subscribed = true
	 		redirect_to user_path(current_user), notice: 'Your Subscription Has Been Submitted.'
 		else
 			render :new 
 		end
	end

	def show

	end

	def edit
	end

	def update
	end

	def destroy
	end


	private

	def subs_params
		params.require(:subscription).permit(:subscriber_id, :level, box_attributes: [:name])
	end

	def set_user
		@user = User.find_by(id: params[:id])
	end	

	def set_subs
		@subs = Subscription.find_by(id: params[:id])
	end
end
