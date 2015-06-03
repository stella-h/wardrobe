class UsersController < ApplicationController
 
# List all users on page
  def index
    @user = User.all 
  end


# Create new user 
# typing & displaying the information
# Where the user lands
  def new
    @user = User.new
  end
  

# Where it goes after the new form
# accepting the information
# Creates a new user with information as objects to go in the database.
  def create
    @user = User.new user_params #authenticating the user's information. fill in the db with these values.
    if @user.save                          #if it saves,
      redirect_to "/users/#{ @user.id }"   #redirect to their profile page
    else
      render :new                #if not new form.
    end
  end


# Shows an individual user by their unique ID (the information is then clarified in show.html.erb)
# refers to the current user (in the session that is declared in app_controller (current_user))
  def show
    @user = @current_user       
    @user = User.find( params[:id] ) 
  end


# SHOWS the edit form
# Using the current user information to edit BUT  
# Using the same skeleton (_form.html.erb), but different flesh ( which is current user defined by user)
  def edit
    @user = @current_user 
    # render :new 
  end


# SHOWS AND EDIT the user form
# takes in the info and INPUT into database
# redirect to home
  def update
    @current_user.update user_params
    redirect_to root_path
  end

  def destroy
    # Deletes the current user
    @current_user.destroy
    redirect_to root_path 
  end


#everything underneath here is private
#on the form, accept the required fields to be stored in db

  private    
  def user_params
    params.require(:user).permit(:name, :location, :picture, :username, :password, :password_confirmation)
  end


#redirect to root path unless the user is present AND the user is admin (both has to be true)
#execute admin features  
  def check_if_admin
    redirect_to root_path unless @current_user.present? && @current_user.admin?
  end
end
