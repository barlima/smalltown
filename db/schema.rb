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

ActiveRecord::Schema.define(version: 20180126162514) do

  create_table "guides", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.string "region"
    t.string "city"
    t.datetime "published_on"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_guides_on_user_id"
  end

  create_table "path_orders", force: :cascade do |t|
    t.integer "position"
    t.integer "path_id"
    t.integer "point_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["path_id"], name: "index_path_orders_on_path_id"
    t.index ["point_id"], name: "index_path_orders_on_point_id"
  end

  create_table "paths", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "guide_id"
    t.index ["guide_id"], name: "index_paths_on_guide_id"
    t.index ["user_id"], name: "index_paths_on_user_id"
  end

  create_table "points", force: :cascade do |t|
    t.string "name"
    t.string "longitude"
    t.string "latitude"
    t.string "category"
    t.integer "rating"
    t.float "avg_time_min"
    t.float "avg_time_max"
    t.text "description"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "guide_id"
    t.index ["guide_id"], name: "index_points_on_guide_id"
    t.index ["user_id"], name: "index_points_on_user_id"
  end

  create_table "trips", force: :cascade do |t|
    t.string "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "created_at"], name: "index_trips_on_user_id_and_created_at"
    t.index ["user_id"], name: "index_trips_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.boolean "admin", default: false
    t.string "reset_digest"
    t.datetime "reset_sent_at"
    t.boolean "creator", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
