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

  def to_s
    name
  end
end
