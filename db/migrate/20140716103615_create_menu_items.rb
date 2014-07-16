class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.references :menu, index: true
      t.references :beer, index: true
      t.integer :price
      t.integer :amount

      t.timestamps
    end
    add_index :menu_items, :price
  end
end
