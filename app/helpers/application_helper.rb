#this will appear through out the whole website
#intellinav - changes the view depending on user status
  # user admin - show all the users
  # user logged in - show log out / edit profile
  # user logged out / new user - show log in & new user sign up

module ApplicationHelper
  def intellinav
    nav = '<nav>
    <?xml version="1.0" encoding="utf-8"?>
    <!-- Generator: Adobe Illustrator 18.1.1, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->
    <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
       viewBox="0 0 80 80" enable-background="new 0 0 80 80" xml:space="preserve">
    <text transform="matrix(1 0 0 1 0.9229 62.7046)" font-family="\'PlutoRegular\'" font-size="71.7677">W</text>
    </svg>
    <ul>'

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
