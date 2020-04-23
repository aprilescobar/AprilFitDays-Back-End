# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_22_224250) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "log_workouts", force: :cascade do |t|
    t.bigint "log_id", null: false
    t.bigint "workout_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["log_id"], name: "index_log_workouts_on_log_id"
    t.index ["workout_id"], name: "index_log_workouts_on_workout_id"
  end

  create_table "logs", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.date "date"
    t.datetime "time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_logs_on_user_id"
  end

  create_table "personal_libraries", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "workout_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_personal_libraries_on_user_id"
    t.index ["workout_id"], name: "index_personal_libraries_on_workout_id"
  end

  create_table "playlist_workouts", force: :cascade do |t|
    t.bigint "playlist_id", null: false
    t.bigint "workout_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["playlist_id"], name: "index_playlist_workouts_on_playlist_id"
    t.index ["workout_id"], name: "index_playlist_workouts_on_workout_id"
  end

  create_table "playlists", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_playlists_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password"
    t.string "img_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "workouts", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.string "description"
    t.string "media"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_workouts_on_user_id"
  end

  add_foreign_key "log_workouts", "logs"
  add_foreign_key "log_workouts", "workouts"
  add_foreign_key "logs", "users"
  add_foreign_key "personal_libraries", "users"
  add_foreign_key "personal_libraries", "workouts"
  add_foreign_key "playlist_workouts", "playlists"
  add_foreign_key "playlist_workouts", "workouts"
  add_foreign_key "playlists", "users"
  add_foreign_key "workouts", "users"
end
