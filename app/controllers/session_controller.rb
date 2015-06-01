class SessionController < ApplicationController
  def new
  end

  #creating a new session. has to match username = name in database. 
  #set up the session for the id of the user 
def create
    user = User.find_by :name => params[:username]
  if user.present? && user.authenticate(params[:password]) 
    session[:user_id] = user.id
    redirect_to root_path
  else
    flash[:notice] = "Invalid login information, please try again."
    redirect_to login_path
  end


#destroys the session
#redirect to home
  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
