class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.references :location, index: true

      t.timestamps
    end
  end
end
