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

ActiveRecord::Schema.define(version: 20170526150522) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "competitions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "status"
    t.string   "score_type"
    t.integer  "range"
    t.boolean  "hidden",     default: false
  end

  create_table "games", force: :cascade do |t|
    t.string   "player_name"
    t.integer  "score_type"
    t.integer  "total_score",    default: 0
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "competition_id"
    t.integer  "target_number"
    t.string   "target_slot"
    t.boolean  "team"
  end

  create_table "scores", force: :cascade do |t|
    t.string   "score_type"
    t.integer  "game_id"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.integer  "x_count",        default: 0
    t.integer  "x_and_10_count", default: 0
    t.integer  "ten_count",      default: 0
    t.integer  "nine_count",     default: 0
    t.integer  "total_score",    default: 0
    t.integer  "score1",         default: [0, 0, 0, 0, 0],              array: true
    t.integer  "score2",         default: [0, 0, 0, 0, 0],              array: true
    t.integer  "score3",         default: [0, 0, 0, 0, 0],              array: true
    t.integer  "score4",         default: [0, 0, 0, 0, 0],              array: true
    t.integer  "score5",         default: [0, 0, 0, 0, 0],              array: true
    t.integer  "score6",         default: [0, 0, 0, 0, 0],              array: true
    t.integer  "score7",         default: [0, 0, 0, 0, 0],              array: true
    t.integer  "score8",         default: [0, 0, 0, 0, 0],              array: true
    t.integer  "score9",         default: [0, 0, 0, 0, 0],              array: true
    t.integer  "score10",        default: [0, 0, 0, 0, 0],              array: true
    t.integer  "score11",        default: [0, 0, 0, 0, 0],              array: true
    t.integer  "score12",        default: [0, 0, 0, 0, 0],              array: true
    t.integer  "points",         default: [0, 0, 0, 0, 0],              array: true
    t.integer  "total_points",   default: 0
  end

end
