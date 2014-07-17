class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def create
    @location = Location.new params[:location]
    if @location.save
    end
  end

  def show
    @location = Location.find params[:id]
  end
end
