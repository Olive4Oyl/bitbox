class BoxesController < ApplicationController

	def index
		@boxes = Box.all
		respond_to do |format|
			format.html { render :index }
			format.json { render json: @boxes.to_json}
		end
	end

end
