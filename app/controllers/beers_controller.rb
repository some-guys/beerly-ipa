class BeersController < ApplicationController

  def index
    @beers = Beer.order(:name)
  end

  def create
    @beer = Beer.new params.require(:beer).permit(:name, :alc)
    if @beer.save
      @beers = Beer.order(:name)
      render :partial => "beers_list"
    else
      render :partial => "beers_list"
    end
  end

  def show
    @beer = Beer.find params[:id]
  end
end
