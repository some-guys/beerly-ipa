class MenuItem < ActiveRecord::Base
  belongs_to :location
  belongs_to :beer

  validates_presence_of :location_id, :beer_id
end
