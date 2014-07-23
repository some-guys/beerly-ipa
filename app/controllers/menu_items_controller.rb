class MenuItemsController < ApplicationController

  def create
    menu_item = MenuItem.new params.require(:menu_item).permit(:location_id, :beer_id, :price, :amount)
    if menu_item.save
      @location = menu_item.location
    end
    redirect_to @location
  end
end

