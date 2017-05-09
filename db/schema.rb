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

ActiveRecord::Schema.define(version: 20170509092022) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adverts", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "business_name"
    t.string   "business_number"
    t.string   "advert_title"
    t.string   "advert_image"
    t.text     "advert_description"
    t.integer  "advert_period"
    t.string   "advert_location"
    t.string   "advert_sticker_location"
    t.integer  "payout_per_mile"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["user_id"], name: "index_adverts_on_user_id", using: :btree
  end

  create_table "bookings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "vehicle_id"
    t.string   "business_name"
    t.string   "business_number"
    t.string   "advert_title"
    t.string   "advert_image"
    t.text     "advert_description"
    t.integer  "advert_period"
    t.string   "advert_location"
    t.string   "advert_sticker_location"
    t.integer  "payout_per_mile"
    t.integer  "stripe_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["user_id"], name: "index_bookings_on_user_id", using: :btree
    t.index ["vehicle_id"], name: "index_bookings_on_vehicle_id", using: :btree
  end

  create_table "photos", force: :cascade do |t|
    t.integer  "vehicle_id"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vehicle_id"], name: "index_photos_on_vehicle_id", using: :btree
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "avatar"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "mob_number"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "vehicles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "car_make"
    t.string   "car_model"
    t.date     "car_built"
    t.string   "car_color"
    t.string   "car_rego"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_vehicles_on_user_id", using: :btree
  end

  add_foreign_key "adverts", "users"
  add_foreign_key "bookings", "users"
  add_foreign_key "bookings", "vehicles"
  add_foreign_key "photos", "vehicles"
  add_foreign_key "profiles", "users"
  add_foreign_key "vehicles", "users"
end
