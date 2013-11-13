class ProjectController < ApplicationController
	def index
		@project = Project.all
		

		respond_to do |format|
			format.html 
			format.json { render json: @project }
		end
	end
	
end
