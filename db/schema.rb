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

ActiveRecord::Schema[7.0].define(version: 2022_05_04_221936) do
  create_table "horses", force: :cascade do |t|
    t.string "horse_name"
    t.string "brand_number"
    t.boolean "availability"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "uin"
    t.string "std_first_name"
    t.string "std_last_name"
    t.string "telephone"
    t.string "email"
    t.text "riding_experience"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "officers", force: :cascade do |t|
    t.string "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "member_id", null: false
    t.index ["member_id"], name: "index_officers_on_member_id"
  end

  create_table "riding_preferences", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "member_id", null: false
    t.integer "horse_id", null: false
    t.index ["horse_id"], name: "index_riding_preferences_on_horse_id"
    t.index ["member_id"], name: "index_riding_preferences_on_member_id"
  end

  create_table "riding_schedules", force: :cascade do |t|
    t.datetime "riding_datetime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "riding_times", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "horse_id", null: false
    t.integer "member_id", null: false
    t.integer "riding_schedule_id", null: false
    t.index ["horse_id"], name: "index_riding_times_on_horse_id"
    t.index ["member_id"], name: "index_riding_times_on_member_id"
    t.index ["riding_schedule_id"], name: "index_riding_times_on_riding_schedule_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "member_id", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["member_id"], name: "index_users_on_member_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "officers", "members"
  add_foreign_key "riding_preferences", "horses"
  add_foreign_key "riding_preferences", "members"
  add_foreign_key "riding_times", "horses"
  add_foreign_key "riding_times", "members"
  add_foreign_key "riding_times", "riding_schedules"
  add_foreign_key "users", "members"
end
