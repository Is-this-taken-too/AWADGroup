  class UsersController < ApplicationController  
  
    def new  
      @user = User.new  
    end 

    def create  
      @user = User.new(params[:user])  
      if @user.save  
        redirect_to :sign_up, :notice => "User Created."  
      else  
        render "new"  
      end  
    end 
	  def login  
  
  end  
      
  def process_login  

    user = User.authenticate(params[:email], params[:password])  
  
   if user  
    
      session[:user_id] = user.id  
    
      redirect_to :project, :notice => "Logged in!"  
    
   else  
   
      flash.now.alert = "Invalid email or password"  
   
      render "login"  
   
    end  

  end  
  
def logout
  session[:user_id] = nil
  redirect_to :log_in , :notice => "Logged out!"
end 

 
   
  end  