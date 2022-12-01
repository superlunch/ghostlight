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

ActiveRecord::Schema[7.0].define(version: 2022_12_01_094237) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "daily_calls", force: :cascade do |t|
    t.text "call_times"
    t.text "working_on"
    t.bigint "called_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["called_id"], name: "index_daily_calls_on_called_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.integer "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "performance_reports", force: :cascade do |t|
    t.text "call_times"
    t.time "scheduled_intermission"
    t.time "actual_intermission"
    t.time "runtime"
    t.integer "audience_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "production_mtg_reports", force: :cascade do |t|
    t.text "accomplishments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productions", force: :cascade do |t|
    t.string "prod_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rehearsal_reports", force: :cascade do |t|
    t.time "scheduled_breaks"
    t.time "actual_breaks"
    t.text "accomplishments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "report_fields", force: :cascade do |t|
    t.date "date"
    t.string "location"
    t.time "scheduled_start"
    t.time "actual_start"
    t.time "scheduled_end"
    t.time "actual_end"
    t.bigint "present_id"
    t.bigint "late_id"
    t.bigint "absent_id"
    t.text "incidents"
    t.text "general_notes"
    t.text "set_notes"
    t.text "props_notes"
    t.text "lx_notes"
    t.text "sound_notes"
    t.text "projection_notes"
    t.text "costume_notes"
    t.text "hair_makeup_notes"
    t.text "foh_notes"
    t.text "stage_mgmt_notes"
    t.text "prod_mgmt_notes"
    t.date "next_date"
    t.string "next_location"
    t.time "next_scheduled_start"
    t.time "next_scheduled_end"
    t.integer "production_id"
    t.string "actable_type"
    t.bigint "actable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["absent_id"], name: "index_report_fields_on_absent_id"
    t.index ["actable_type", "actable_id"], name: "index_report_fields_on_actable"
    t.index ["late_id"], name: "index_report_fields_on_late_id"
    t.index ["present_id"], name: "index_report_fields_on_present_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "team_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.date "dob"
    t.string "emergency_name"
    t.string "emergency_phone"
    t.string "emergency_relationship"
    t.text "medical_info"
    t.text "contact_notes"
    t.integer "job_id"
    t.integer "production_id"
    t.boolean "is_admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "daily_calls", "users", column: "called_id"
  add_foreign_key "report_fields", "users", column: "absent_id"
  add_foreign_key "report_fields", "users", column: "late_id"
  add_foreign_key "report_fields", "users", column: "present_id"
end
