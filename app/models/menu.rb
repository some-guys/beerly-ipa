class Menu < ActiveRecord::Base
  belongs_to :location
  has_many :items, class_name: "MenuItem", dependent: :destroy

  validates_presence_of :location_id
end
