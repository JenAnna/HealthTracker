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

ActiveRecord::Schema.define(version: 20150606134402) do

  create_table "calorie_intakes", force: :cascade do |t|
    t.integer  "calories"
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "exercise_types", force: :cascade do |t|
    t.string   "description"
    t.integer  "calories_burned_per_minute"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "exercises", force: :cascade do |t|
    t.integer  "exercise_type_id"
    t.integer  "calories_burned"
    t.integer  "time_in_minutes"
    t.string   "description"
    t.date     "date"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "user_id"
  end

  create_table "pedometer_readings", force: :cascade do |t|
    t.integer  "steps"
    t.integer  "calories_burned"
    t.date     "date"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "security_key"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "weigh_ins", force: :cascade do |t|
    t.integer  "weight"
    t.string   "units"
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

end
