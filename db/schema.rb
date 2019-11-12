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

ActiveRecord::Schema.define(version: 2019_11_10_212427) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.string "client_id", null: false
    t.string "trainer_id", null: false
    t.datetime "start"
    t.datetime "end"
    t.string "workout_id"
    t.string "workoutlog_id"
    t.index ["client_id"], name: "index_appointments_on_client_id"
    t.index ["trainer_id"], name: "index_appointments_on_trainer_id"
    t.index ["workout_id"], name: "index_appointments_on_workout_id"
    t.index ["workoutlog_id"], name: "index_appointments_on_workoutlog_id"
  end

  create_table "clients", force: :cascade do |t|
    t.float "height"
    t.date "birthday"
    t.text "injuries"
    t.text "goals"
    t.text "athletic_background"
    t.text "work_history"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "notes"
    t.string "workoutlog_id"
    t.string "user_id"
    t.float "weight"
    t.index ["user_id"], name: "index_clients_on_user_id"
    t.index ["workoutlog_id"], name: "index_clients_on_workoutlog_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "exercises"
    t.text "sets"
    t.text "reps"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "trainer_id"
    t.integer "client_id"
    t.index ["client_id"], name: "index_sessions_on_client_id"
    t.index ["trainer_id"], name: "index_sessions_on_trainer_id"
  end

  create_table "trainers", force: :cascade do |t|
    t.text "athletic_background"
    t.date "started_training"
    t.text "specialties"
    t.text "bio"
    t.text "availability"
    t.string "location"
    t.string "certificate_id"
    t.text "other_credentials"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user_id"
    t.index ["user_id"], name: "index_trainers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "username", null: false
    t.string "role", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "workoutlogs", force: :cascade do |t|
    t.string "client_id", null: false
    t.string "appointment_id"
    t.datetime "date"
    t.float "weight"
    t.integer "mood"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["appointment_id"], name: "index_workoutlogs_on_appointment_id"
    t.index ["client_id"], name: "index_workoutlogs_on_client_id"
  end

  create_table "workouts", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "exercise"
    t.integer "sets"
    t.float "reps"
    t.float "lbs"
    t.float "miles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "appointment_id"
    t.string "trainer_id"
    t.text "notes"
    t.index ["appointment_id"], name: "index_workouts_on_appointment_id"
    t.index ["trainer_id"], name: "index_workouts_on_trainer_id"
  end

end
