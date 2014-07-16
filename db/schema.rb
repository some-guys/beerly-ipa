# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140716160132) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beers", force: true do |t|
    t.string   "name"
    t.float    "alc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "beers", ["alc"], name: "index_beers_on_alc", using: :btree
  add_index "beers", ["name"], name: "index_beers_on_name", using: :btree

  create_table "locations", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "mail"
    t.string   "website"
    t.decimal  "latitude",   precision: 15, scale: 10, default: 0.0
    t.decimal  "longitude",  precision: 15, scale: 10, default: 0.0
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menu_items", force: true do |t|
    t.integer  "location_id"
    t.integer  "beer_id"
    t.integer  "price"
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "menu_items", ["beer_id"], name: "index_menu_items_on_beer_id", using: :btree
  add_index "menu_items", ["location_id"], name: "index_menu_items_on_location_id", using: :btree
  add_index "menu_items", ["price"], name: "index_menu_items_on_price", using: :btree

end
