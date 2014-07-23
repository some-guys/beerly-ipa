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

require 'rails_helper'

RSpec.describe MenuItem, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
