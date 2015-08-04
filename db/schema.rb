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

ActiveRecord::Schema.define(version: 20150804215624) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.text     "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "destinations", force: :cascade do |t|
    t.text     "continent"
    t.text     "description"
    t.float    "lat"
    t.float    "long"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "extras", force: :cascade do |t|
    t.text     "name"
    t.text     "description"
    t.float    "cost"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "trip_extras", force: :cascade do |t|
    t.integer "trip_id"
    t.integer "extra_id"
  end

  add_index "trip_extras", ["extra_id"], name: "index_trip_extras_on_extra_id", using: :btree
  add_index "trip_extras", ["trip_id"], name: "index_trip_extras_on_trip_id", using: :btree

  create_table "trips", force: :cascade do |t|
    t.integer  "destination_id"
    t.integer  "activity_id"
    t.float    "total_cost"
    t.float    "trip_cost"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "trips", ["activity_id"], name: "index_trips_on_activity_id", using: :btree
  add_index "trips", ["destination_id"], name: "index_trips_on_destination_id", using: :btree

  add_foreign_key "trip_extras", "extras"
  add_foreign_key "trip_extras", "trips"
  add_foreign_key "trips", "activities"
  add_foreign_key "trips", "destinations"
end
