class SubscriptionsController < ApplicationController
	before_action :set_subs
	before_action :set_user

	def index
		@subs = Subscription.all
		respond_to do |format|
			format.html { render :index }
			format.json { render json: @subs } 
		end
	end
	
	def new
		@subs = Subscription.new
		@subs.build_box
	end

	def create
		# @subs = Subscription.new(subs_params)
		# if @subs.valid?
	 # 		@subs.save
	 # 		current_user.subscribed = true
	 # 		redirect_to user_path(current_user), notice: 'You Are Now Subscribed.'
 	# 	else
 	# 		render :new 
 	# 	end
	end

	def show
		respond_to do |format|
			format.html { render :index }
			format.json { render json: @subs }
		end 
	end

	def edit
	end

	def update
		# if @subs.update(subs_params)
		# 	redirect_to user_subscription_path(current_user, @subs), notice: 'Your Subscription is Updated.'
		# else
		# 	render :edit
		# end
	end

	def destroy
		@subs.delete
		redirect_to user_path(current_user), notice: 'Your Subscription is Canceled.'
	end


	private

	def subs_params
		params.require(:subscription).permit(:subscriber_id, :level, box_attributes: [:title])
	end

	def set_user
		@user = User.find_by(id: params[:id])
	end	

	def set_subs
		@subs = Subscription.find_by(id: params[:id])
	end
end
