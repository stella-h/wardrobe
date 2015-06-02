class OutfitsController < ApplicationController
#executing ruby commands, controls behaviour

#list all the outfit
  def index
    @outfit = Outfit.all
  end




  def new
    @outfit = Outfit.new
  end
  


  def create
    @outfit = Outfit.new outfit_params
    if @outfit.save                     #if it saves/works
      redirect_to outfit_path           #show the individual page
    else
      render :new                       #if not load form again
    end
  end

  def show
  end


  def edit
  end

  def update
  end

  def destroy
  end
end

  private    
  def outfit_params
    params.require(:outfit).permit(:title, :description, :image) 
  end
