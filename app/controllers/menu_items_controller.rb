class MenuItemsController < ApplicationController

  def create
    menu_item = MenuItem.new params.require(:menu_item).permit(:location_id, :beer_id, :price, :amount)
    if menu_item.save
      @location = menu_item.location
    end
    redirect_to @location
  end

  def destroy
    menu_item = MenuItem.find params[:id]
    @location = menu_item.location
    if menu_item.destroy
      redirect_to @location
    else
      flash[:alert] = "#{@menu_item.beer} could not be deleted from menu"
      redirect_to @location
    end
  end
end

