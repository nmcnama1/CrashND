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

ActiveRecord::Schema.define(version: 20161210202519) do

  create_table "catalogs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "landlords", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "listings", force: :cascade do |t|
    t.string   "dorm"
    t.string   "gender"
    t.integer  "room"
    t.date     "start_date"
    t.date     "end_date"
    t.text     "description"
    t.boolean  "is_available"
    t.integer  "catalog_id"
    t.integer  "landlord_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "listings", ["catalog_id"], name: "index_listings_on_catalog_id"
  add_index "listings", ["landlord_id"], name: "index_listings_on_landlord_id"

  create_table "reservations", force: :cascade do |t|
    t.string   "dorm"
    t.integer  "room"
    t.datetime "checkin_date"
    t.datetime "checkout_date"
    t.text     "description"
    t.string   "status"
    t.integer  "landlord_id"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "reservations", ["landlord_id"], name: "index_reservations_on_landlord_id"
  add_index "reservations", ["user_id"], name: "index_reservations_on_user_id"

  create_table "reviews", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "user_id"
    t.integer  "landlord_id"
    t.integer  "rating"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "reviews", ["landlord_id"], name: "index_reviews_on_landlord_id"
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

  create_table "room_types", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
