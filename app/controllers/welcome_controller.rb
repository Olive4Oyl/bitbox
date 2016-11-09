class WelcomeController < ActionController::Base

	def index
		@user = current_user
	end
	
end
