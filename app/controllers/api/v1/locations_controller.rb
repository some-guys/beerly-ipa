module Api
  module V1
    class LocationsController < ApplicationController
      def index
        @locations = Location.all
        render json: @locations.to_json(include: :menu_items)
      end
    end
  end
end
