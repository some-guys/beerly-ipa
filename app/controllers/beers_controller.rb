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

  def destroy
    @beer = Beer.find params[:id]
    if @beer.destroy
      redirect_to beers_path
    else
      flash[:alert] = "#{@beer} could not be destroyed"
      redirect_to beers_path
    end
  end
end
