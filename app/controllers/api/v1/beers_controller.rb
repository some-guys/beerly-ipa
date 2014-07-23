module Api
  module V1
    class BeersController < ApplicationController
      def index
        @beers = Beer.all
        render json: @beers.to_json
      end
    end
  end
end
