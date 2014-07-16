class MenuItem < ActiveRecord::Base
  belongs_to :menu
  belongs_to :beer

  validates_presence_of :menu_id, :beer_id
end
