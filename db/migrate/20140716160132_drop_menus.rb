class DropMenus < ActiveRecord::Migration
  def up
    drop_table :menus
    rename_column :menu_items, :menu_id, :location_id
  end

  def down
    create_table "menus"  do |t|
      t.integer  "location_id"
      t.datetime "created_at"
      t.datetime "updated_at"
    end
    rename_column :menu_items, :location_id, :menu_id
  end
end
