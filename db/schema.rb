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

ActiveRecord::Schema.define(version: 2019_11_29_024509) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "scooter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "confirmation", default: false
    t.date "booking_date"
    t.index ["scooter_id"], name: "index_bookings_on_scooter_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "scooters", force: :cascade do |t|
    t.string "model"
    t.string "top_speed"
    t.string "price"
    t.boolean "availability"
    t.string "location"
    t.string "battery"
    t.string "year"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
    t.float "latitude"
    t.float "longitude"
    t.index ["user_id"], name: "index_scooters_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "description"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "open_id"
    t.string "avatar"
  end

  add_foreign_key "bookings", "scooters"
  add_foreign_key "bookings", "users"
  add_foreign_key "scooters", "users"
end
