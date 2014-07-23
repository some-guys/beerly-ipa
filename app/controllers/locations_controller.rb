class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def create
    @location = Location.new params.require(:location).permit(:name, :latitude, :longitude)
    if @location.save
      @locations = Location.order(:name)
    end
    redirect_to locations_path
  end

  def show
    @location = Location.find params[:id]
  end

  def destroy
    @location = Location.find params[:id]
    if @location.destroy
      redirect_to locations_path
    else
      render @location
    end
  end
end
