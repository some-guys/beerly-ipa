class FixTypoInLocations < ActiveRecord::Migration
  def change
    rename_column :locations, :latitud, :latitude
    rename_column :locations, :longitud, :longitude
  end
end
