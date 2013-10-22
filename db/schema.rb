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

ActiveRecord::Schema.define(version: 20131022002117) do

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
    t.string   "road"
    t.string   "mile_marker"
    t.string   "direction"
    t.string   "address"
    t.string   "city"
    t.string   "country"
    t.string   "state"
    t.string   "zip"
    t.string   "narrative"
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

end
