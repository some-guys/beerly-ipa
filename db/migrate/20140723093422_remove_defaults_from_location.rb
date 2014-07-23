class RemoveDefaultsFromLocation < ActiveRecord::Migration
  def up
    change_column :locations, :latitude, :decimal, :precision => 15, :scale => 10, :default => nil
    change_column :locations, :longitude, :decimal, :precision => 15, :scale => 10, :default => nil
  end

  def down
    change_column :locations, :latitude, :decimal, :precision => 15, :scale => 10, :default => 0.0
    change_column :locations, :longitude, :decimal, :precision => 15, :scale => 10, :default => 0.0
  end
end
