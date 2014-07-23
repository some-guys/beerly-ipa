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

require 'rails_helper'

RSpec.describe Location, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
