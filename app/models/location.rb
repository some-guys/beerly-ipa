class Location < ActiveRecord::Base
  has_one :menu
  validates_presence_of :name, :latitude, :longitude

  def to_s
    name
  end
end
