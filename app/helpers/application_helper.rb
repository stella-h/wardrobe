#this will appear through out the whole website
#intellinav - changes the view depending on user status
  # user admin - show all the users
  # user logged in - show log out / edit profile
  # user logged out / new user - show log in & new user sign up

module ApplicationHelper
  def intellinav
    nav = "<nav><a href='/''>#{ image_tag 'logo.svg', :class => 'svg' }</a><ul>"

    if @current_user.present?
      nav += '<li>' + link_to("#{ @current_user.name }", edit_user_path(@current_user)) + '</li>'      
      nav += '<li>' + link_to("New Outfit", new_outfit_path) + '</li>'
      nav += '<li>' + link_to("All my outfits", outfits_path) + '</li>'
      nav += '<li class="log_out">' + link_to("Log out", logout_path) + '</li>'
    else
      nav += '<li>' + link_to('Log in', login_path) + '</li>'
      nav += '<li class="sign_up">' + link_to('Sign up', new_user_path) + '</li>'
    end
    nav +='</ul></nav>'
    nav
  end
end




#keep home button
#input any if statements in here to not clutter the view page 
