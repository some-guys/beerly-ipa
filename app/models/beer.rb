# == Schema Information
#
# Table name: beers
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  alc        :float
#  created_at :datetime
#  updated_at :datetime
#

class Beer < ActiveRecord::Base
  validates_presence_of :name

  before_destroy :check_usage

  def to_s
    name
  end

  private

  def check_usage
    MenuItem.where(:beer_id => id).empty?
  end

end
