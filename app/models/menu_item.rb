# == Schema Information
#
# Table name: menu_items
#
#  id          :integer          not null, primary key
#  location_id :integer
#  beer_id     :integer
#  price       :integer
#  amount      :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class MenuItem < ActiveRecord::Base
  belongs_to :location
  belongs_to :beer

  validates_presence_of :location_id, :beer_id
end
