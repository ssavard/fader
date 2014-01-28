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

ActiveRecord::Schema.define(version: 20140127185551) do

  create_table "groups", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "address"
    t.string   "phone"
    t.string   "web"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "priority"
    t.text     "note"
  end

  add_index "groups", ["latitude"], name: "index_groups_on_latitude"
  add_index "groups", ["longitude"], name: "index_groups_on_longitude"
  add_index "groups", ["name"], name: "index_groups_on_name", unique: true

  create_table "markets", force: true do |t|
    t.integer  "rank"
    t.string   "name"
    t.string   "description"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "complete"
  end

  add_index "markets", ["latitude"], name: "index_markets_on_latitude"
  add_index "markets", ["longitude"], name: "index_markets_on_longitude"
  add_index "markets", ["rank"], name: "index_markets_on_rank", unique: true

  create_table "stations", force: true do |t|
    t.string   "call"
    t.integer  "channel"
    t.string   "name"
    t.string   "description"
    t.text     "note"
    t.integer  "priority"
    t.string   "address"
    t.string   "phone"
    t.string   "web"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "group_id"
    t.integer  "affiliate_id"
    t.integer  "market_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stations", ["affiliate_id"], name: "index_stations_on_affiliate_id"
  add_index "stations", ["group_id"], name: "index_stations_on_group_id"
  add_index "stations", ["latitude"], name: "index_stations_on_latitude"
  add_index "stations", ["longitude"], name: "index_stations_on_longitude"
  add_index "stations", ["market_id"], name: "index_stations_on_market_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
