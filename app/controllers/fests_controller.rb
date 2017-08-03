class FestsController < ApplicationController

	def index
		@fests = Fest.all
	end

	def new 
		@fest = Fest.new
	end

	def create
		@fest = Fest.new(params[:fest].permit(:name, :description, :start_date, :end_date))
		if @fest.save 
			redirect_to "/fests", notice: "Fest successfully created"
		else
			render action: "new"
		end
	end
end
