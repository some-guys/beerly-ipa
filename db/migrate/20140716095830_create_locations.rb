class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :phone
      t.string :mail
      t.string :website
      t.decimal :latitud, :precision => 15, :scale => 10, :default => 0.0
      t.decimal :longitud, :precision => 15, :scale => 10, :default => 0.0
      t.string :address

      t.timestamps
    end
  end
end
