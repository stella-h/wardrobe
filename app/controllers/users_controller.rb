class UsersController < ApplicationController
 
# List all users on page
  def index
    @user = User.all 
  end


# Create new user 
# Where the user lands
  def new
    @user = User.new
  end
  

# Where it goes after the new form
# Creates a new user with information as objects to go in the database.
  def create
    @user = User.new user_params #authenticating the user's information. fill in the db with these values.
    if @user.save
      redirect_to root_path      #redirect to home
    else
      render :new                #if not new form.
    end
  end


# Shows an individual user
  def show
    @user = @current_user       #refers to the session that is declared in app_controller (current_user)

    
  end


# Shows the edit form
# Using the current user to edit
# Using the same skeleton (form) as new user, but different flesh, which is current user defined by user
  def edit
    @user = @current_user 
    render :new 
  end


# Updates the user
  def update
    
  end

  def destroy
    # Deletes the user
    @user = User.destroy user_params
    redirect_to root_path 
  end


#everything underneath here is private
#on the form, accept the required fields to be stored in db

  private    
  def user_params
    params.require(:user).permit(:name, :location, :picture, :password, :password_confirmation)
  end


#redirect to root path unless the user is present AND the user is admin (both has to be true)
#execute admin features  
def check_if_admin
    redirect_to root_path unless @current_user.present? && @current_user.admin?
  end
end
