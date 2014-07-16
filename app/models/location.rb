class Location < ActiveRecord::Base
  has_many :menu_items
  validates_presence_of :name, :latitude, :longitude

  def to_s
    name
  end
end
