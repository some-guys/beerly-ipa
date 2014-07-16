class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.float :alc

      t.timestamps
    end
    add_index :beers, :name
    add_index :beers, :alc
  end
end
