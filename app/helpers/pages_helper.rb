module PagesHelper
  def userdash
    nav = '' 

    if @current_user.present?
      nav += '<li>' + link_to("edit profile", edit_user_path(@current_user)) + '</li>'
      nav += '<li>' + link_to("new outfit", new_outfit_path) + '</li>'
      nav += '<li>' + link_to("all my tags", tags_path) + '</li>'
      nav += '<li>' + link_to("all my outfits", outfits_path) + '</li>'
    end
    nav
  end
end
