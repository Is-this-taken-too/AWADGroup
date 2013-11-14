class ProjectController < ApplicationController
	def index
		@project = Project.all
			if session[:user_id] != nil
     
				@user = User.find(session[:user_id]).email
     
			else
      
				@user = "Guest"
			end
		
	end
	
	def search
		@project= Project.find(:all, :conditions => ["COUNTRY_OPERATING_UNIT LIKE ?", "%#{params[:key]}%"])
	end
	
	def admin
		if session[:user_id] != nil
    
			@project = Project.all
			
		else 
			@project = "Please log in"

		end
	end
	

end
