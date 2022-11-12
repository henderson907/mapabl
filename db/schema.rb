# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_11_12_134121) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accessibility_features", force: :cascade do |t|
    t.string "feature"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string "content"
    t.integer "rating"
    t.bigint "venue_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_reviews_on_user_id"
    t.index ["venue_id"], name: "index_reviews_on_venue_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "venue_categories", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "venue_features", force: :cascade do |t|
    t.bigint "venue_id", null: false
    t.bigint "accessibility_feature_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["accessibility_feature_id"], name: "index_venue_features_on_accessibility_feature_id"
    t.index ["venue_id"], name: "index_venue_features_on_venue_id"
  end

  create_table "venues", force: :cascade do |t|
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.string "email"
    t.string "name"
    t.bigint "venue_category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["venue_category_id"], name: "index_venues_on_venue_category_id"
  end

  add_foreign_key "reviews", "users"
  add_foreign_key "reviews", "venues"
  add_foreign_key "venue_features", "accessibility_features"
  add_foreign_key "venue_features", "venues"
  add_foreign_key "venues", "venue_categories"
end
