# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  phone      :string(255)
#  mail       :string(255)
#  website    :string(255)
#  latitude   :decimal(15, 10)  default(0.0)
#  longitude  :decimal(15, 10)  default(0.0)
#  address    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Location < ActiveRecord::Base
  has_many :menu_items, :dependent => :destroy
  validates_presence_of :name, :latitude, :longitude

  def to_s
    name
  end
end
