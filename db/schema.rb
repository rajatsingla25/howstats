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

ActiveRecord::Schema.define(version: 20170107112433) do

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "url"
  end

  create_table "iplrecords", force: :cascade do |t|
    t.integer  "m"
    t.integer  "inn"
    t.integer  "no"
    t.integer  "runs"
    t.integer  "hs"
    t.float    "avg"
    t.integer  "bf"
    t.float    "sr"
    t.integer  "hundred"
    t.integer  "dhundred"
    t.integer  "fifty"
    t.integer  "four"
    t.integer  "six"
    t.integer  "st"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "player_id"
  end

  create_table "odiranks", force: :cascade do |t|
    t.string   "rank"
    t.string   "rating"
    t.string   "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "country_id"
  end

  create_table "odirecords", force: :cascade do |t|
    t.integer  "m"
    t.integer  "inn"
    t.integer  "no"
    t.integer  "runs"
    t.integer  "hs"
    t.float    "avg"
    t.integer  "bf"
    t.float    "sr"
    t.integer  "hundred"
    t.integer  "dhundred"
    t.integer  "fifty"
    t.integer  "four"
    t.integer  "six"
    t.integer  "st"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "player_id"
  end

# Could not dump table "players" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "records", force: :cascade do |t|
    t.string   "name"
    t.integer  "m"
    t.integer  "inn"
    t.integer  "no"
    t.integer  "runs"
    t.integer  "hs"
    t.float    "avg"
    t.integer  "bf"
    t.float    "sr"
    t.integer  "hundred"
    t.integer  "dhundred"
    t.integer  "fifty"
    t.integer  "four"
    t.integer  "six"
    t.integer  "st"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "player_id"
  end

  create_table "testranks", force: :cascade do |t|
    t.string   "rank"
    t.string   "rating"
    t.string   "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "country_id"
  end

  create_table "testrecords", force: :cascade do |t|
    t.integer  "m"
    t.integer  "inn"
    t.integer  "no"
    t.integer  "runs"
    t.integer  "hs"
    t.float    "avg"
    t.integer  "bf"
    t.float    "sr"
    t.integer  "hundred"
    t.integer  "dhundred"
    t.integer  "fifty"
    t.integer  "four"
    t.integer  "six"
    t.integer  "st"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "player_id"
  end

  create_table "twentyranks", force: :cascade do |t|
    t.string   "rank"
    t.string   "rating"
    t.string   "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "country_id"
  end

  create_table "twentyrecords", force: :cascade do |t|
    t.integer  "m"
    t.integer  "inn"
    t.integer  "no"
    t.integer  "runs"
    t.integer  "hs"
    t.float    "avg"
    t.integer  "bf"
    t.float    "sr"
    t.integer  "hundred"
    t.integer  "dhundred"
    t.integer  "fifty"
    t.integer  "four"
    t.integer  "six"
    t.integer  "st"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "player_id"
  end

end
