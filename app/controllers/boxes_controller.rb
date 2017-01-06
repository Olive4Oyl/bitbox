class BoxesController < ApplicationController

	def index
		@boxes = Box.all
		# render json: @boxes
		respond_to do |format|
			format.html { render :index }
			format.json { render json: @boxes }
		end
	end

end
