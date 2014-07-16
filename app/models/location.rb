class Location < ActiveRecord::Base
  validates_presence_of :name, :latitude, :longitude

  def to_s
    name
  end
end
