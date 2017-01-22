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

ActiveRecord::Schema.define(version: 20170122024556) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "competitions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.string   "player_name"
    t.integer  "score_type"
    t.integer  "total_score"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "competition_id"
    t.string   "target_number"
  end

  create_table "scores", force: :cascade do |t|
    t.string   "score_type"
    t.integer  "game_id"
    t.integer  "score1"
    t.integer  "score2"
    t.integer  "score3"
    t.integer  "score4"
    t.integer  "score5"
    t.integer  "score6"
    t.integer  "score7"
    t.integer  "score8"
    t.integer  "score9"
    t.integer  "score10"
    t.integer  "x_count"
    t.integer  "x_and_10_count"
    t.integer  "ten_count"
    t.integer  "nine_count"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
