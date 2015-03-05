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

ActiveRecord::Schema.define(version: 20150305044756) do

  create_table "countries", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "nickname"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "gender"
    t.integer  "points"
  end

  create_table "team_players", force: true do |t|
    t.integer  "team_id"
    t.integer  "player_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "team_players", ["player_id"], name: "index_team_players_on_player_id"
  add_index "team_players", ["team_id"], name: "index_team_players_on_team_id"

  create_table "teams", force: true do |t|
    t.string   "name"
    t.integer  "victories"
    t.integer  "losses"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tournament_id"
  end

  create_table "tournaments", force: true do |t|
    t.string   "name"
    t.integer  "team_limits"
    t.string   "prize"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "country_id"
  end

  add_index "tournaments", ["country_id"], name: "index_tournaments_on_country_id"

end
