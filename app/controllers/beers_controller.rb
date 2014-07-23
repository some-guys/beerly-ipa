class BeersController < ApplicationController

  def index
    @beers = Beer.order(:name)
  end

  def create
    @beer = Beer.new params.require(:beer).permit(:name, :alc)
    if @beer.save
      @beers = Beer.order(:name)
    end
    redirect_to beers_path
  end

  def show
    @beer = Beer.find params[:id]
  end
end
