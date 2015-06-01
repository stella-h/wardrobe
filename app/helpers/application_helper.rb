#intellinav - changes the view depending on user status
  # user admin - show all the users
  # user logged in - show log out / edit profile
  # user logged out / new user - show log in & new user sign up

module ApplicationHelper
  def intellinav 
    nav = ''

    if @curent_user.present? && @current_user.admin? 
      nav += '<li>' + link_to('Log out', login_path) + '</li>'
      nav += '<li>' + link_to('Show Users', users_path) + '</li>' 
    end

    #if user is present show edit & log out
    #log out deletes user session

    #if user is not present, show sign up & log in
    if @current_user.present?
      nav += '<li>' + link_to("Log in", edit_user_path + '</li>'
      nav += '<li>' + link_to("Log out #{ @current_user.name }", login_path, :method => :delete) + '</li>'
    else
      nav += '<li>' + link_to('Sign up', new_user_path) + '</li>'
      nav += '<li>' + link_to('Log in', login_path) + '</li>'
    end

      nav 
    end
  end


#keep home button
#input any if statements in here to not clutter the view page 
