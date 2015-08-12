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

ActiveRecord::Schema.define(version: 20150812152033) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.text     "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "image_url"
  end

  create_table "destinations", force: :cascade do |t|
    t.text     "continent"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "image_url"
  end

  create_table "extras", force: :cascade do |t|
    t.text     "name"
    t.text     "description"
    t.float    "cost"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "order_trips", force: :cascade do |t|
    t.integer "order_id"
    t.integer "trip_id"
    t.integer "quantity"
  end

  add_index "order_trips", ["order_id"], name: "index_order_trips_on_order_id", using: :btree
  add_index "order_trips", ["trip_id"], name: "index_order_trips_on_trip_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "status",     default: 0
  end

  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "reviews", force: :cascade do |t|
    t.string   "name"
    t.text     "content"
    t.string   "occupation"
    t.string   "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.text     "name"
    t.text     "description"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.decimal  "lat"
    t.decimal  "long"
  end

  add_index "trips", ["activity_id"], name: "index_trips_on_activity_id", using: :btree
  add_index "trips", ["destination_id"], name: "index_trips_on_destination_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.integer  "role",            default: 0
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.text     "full_name"
    t.text     "address"
  end

  add_foreign_key "order_trips", "orders"
  add_foreign_key "order_trips", "trips"
  add_foreign_key "orders", "users"
  add_foreign_key "trip_extras", "extras"
  add_foreign_key "trip_extras", "trips"
  add_foreign_key "trips", "activities"
  add_foreign_key "trips", "destinations"
end
