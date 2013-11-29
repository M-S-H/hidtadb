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

ActiveRecord::Schema.define(version: 20131126165441) do

  create_table "addresses", force: true do |t|
    t.integer  "address_id"
    t.integer  "street_number"
    t.string   "street_name"
    t.string   "city"
    t.integer  "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "arrests", force: true do |t|
    t.integer  "arrest_id"
    t.integer  "subject_id"
    t.integer  "location_id"
    t.date     "date"
    t.string   "cause"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "audits", force: true do |t|
    t.integer  "user_id"
    t.string   "action"
    t.time     "time"
    t.date     "date"
    t.integer  "record_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "recordtype"
  end

  create_table "drugs", force: true do |t|
    t.string   "type_of_drug"
    t.string   "amount"
    t.string   "purchase_price"
    t.string   "currency"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "siezure_report_id"
  end

  create_table "dtos", force: true do |t|
    t.integer  "dto_id"
    t.string   "dto_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "road"
    t.string   "mile_marker"
    t.string   "direction"
    t.string   "address"
    t.string   "city"
    t.string   "county"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "siezure_report_id"
  end

  create_table "rfis", force: true do |t|
    t.string   "requestor_name"
    t.string   "requestor_agency"
    t.string   "telephone_number"
    t.string   "fax_number"
    t.string   "agency_case_number"
    t.string   "email_address"
    t.integer  "priority_id"
    t.string   "type_of_drug"
    t.string   "subject_name"
    t.string   "subject_address"
    t.string   "subject_business_name"
    t.string   "subject_alias"
    t.string   "subject_dob"
    t.string   "alien_registration_number"
    t.string   "subject_sex"
    t.string   "subject_race"
    t.string   "subject_height"
    t.string   "subject_weight"
    t.string   "subject_ssn"
    t.string   "subject_driver_license_number"
    t.string   "vehicle_id"
    t.string   "state_of_registration"
    t.string   "vehicle_vin"
    t.string   "subject_telephone_numbers"
    t.string   "known_criminal_activity"
    t.string   "information_needed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "searches", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "siezure_reports", force: true do |t|
    t.string   "taskforce"
    t.string   "agency"
    t.string   "casenum"
    t.string   "cjis"
    t.string   "initiative"
    t.date     "siezuredate"
    t.time     "siezuretime"
    t.string   "siezuretype"
    t.boolean  "hheop"
    t.text     "narrative"
    t.boolean  "analytical"
    t.string   "concealment_method"
    t.boolean  "false_compartment"
    t.string   "compartment_location"
    t.string   "cargo_state_type"
    t.boolean  "k9used"
    t.string   "lab_stash_house"
    t.string   "poc"
    t.string   "pocphone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjects", force: true do |t|
    t.string   "name"
    t.date     "dob"
    t.string   "ssn"
    t.string   "oln"
    t.string   "gender"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.boolean  "passanger"
    t.text     "misc"
    t.string   "citizenship"
    t.integer  "siezure_report_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "telephones", force: true do |t|
    t.integer  "telephone_id"
    t.integer  "seizure_report_id"
    t.string   "telephone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "fname"
    t.string   "lname"
    t.string   "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vehicles", force: true do |t|
    t.string   "make"
    t.string   "model"
    t.string   "year"
    t.string   "plate"
    t.string   "state"
    t.string   "color"
    t.string   "owner"
    t.integer  "siezure_report_id"
    t.integer  "subject_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "weapons", force: true do |t|
    t.integer  "siezure_report_id"
    t.string   "weapon_type"
    t.string   "caliber"
    t.string   "sn"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
