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

ActiveRecord::Schema.define(version: 20141104230931) do

  create_table "regions", force: true do |t|
    t.string   "region_name"
    t.string   "language"
    t.string   "climate"
    t.integer  "rank"
    t.string   "picture"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sites", force: true do |t|
    t.string   "site_name"
    t.string   "contact"
    t.string   "address"
    t.text     "description"
    t.string   "picture"
    t.integer  "region_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "rating"
  end

  add_index "sites", ["region_id"], name: "index_sites_on_region_id"

  create_table "states", force: true do |t|
    t.string   "name"
    t.string   "climate"
    t.string   "language"
    t.text     "info"
    t.text     "culture"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "touristsites", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.string   "description"
    t.string   "picture"
    t.integer  "rating"
    t.integer  "state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "pic1"
    t.string   "pic2"
    t.string   "pic4"
  end

  add_index "touristsites", ["state_id"], name: "index_touristsites_on_state_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "age"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
