class Menu < ActiveRecord::Base
  belongs_to :location

  validates_presence_of :location_id
end
