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

require 'rails_helper'

RSpec.describe Beer, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
