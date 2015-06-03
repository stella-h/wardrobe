class OutfitsController < ApplicationController
#executing ruby commands, controls behaviour

#list all the outfit
#current user all outfit
  def index
    if @current_user
      @outfit = @current_user.outfits
    else 
      @outfit = Outfit.all
    end
  end




  def new
    @outfit = Outfit.new
  end
  


  def create
    @outfit = @current_user.outfits.new outfit_params
    if @outfit.save                                    #if it saves/works
      redirect_to "/outfits/#{ @outfit.id }"           #show the individual page
    else
      render :new                                       #if not load form again
    end
  end

  def show
    @outfit = Outfit.find params[:id]
  end

  def edit
    @outfit = Outfit.find params[:id]
  end

  def update
    @outfit = Outfit.find params[:id]
    @outfit.update outfit_params

    redirect_to outfit_path( @outfit )
  end 

  def destroy
  end
end

  private    
  def outfit_params
    params.require(:outfit).permit(:title, :description, :image) 
  end
