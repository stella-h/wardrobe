module OutfitsHelper
  def outfitdash
    nav = ''

    if @current_user.present?
     nav += '<li>' + link_to("all my outfits", outfits_path) + '</li>'
     nav += '<li>' + link_to("edit current outfit", edit_outfit_path) + '</li>'
    end
  end
end
