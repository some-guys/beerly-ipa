class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def create
    @location = Location.new params.require(:location).permit(:name, :latitude, :longitude)
    if @location.save
      @locations = Location.order(:name)
      render :partial => "locations_list"
    else
      render :partial => "locations_list"
    end
  end

  def show
    @location = Location.find params[:id]
  end
end
