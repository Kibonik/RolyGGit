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

ActiveRecord::Schema.define(version: 20180602095659) do

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "race"
    t.integer "size"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players_quests", id: false, force: :cascade do |t|
    t.integer "player_id"
    t.integer "quest_id"
    t.index ["player_id"], name: "index_players_quests_on_player_id"
    t.index ["quest_id"], name: "index_players_quests_on_quest_id"
  end

  create_table "quests", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weapon_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weapon_types", force: :cascade do |t|
    t.integer "weapon_category_id"
    t.string "name"
    t.integer "dist_min"
    t.integer "dist_max"
    t.integer "dmg_min"
    t.integer "clip_min"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "dmg_max"
    t.integer "clip_max"
    t.index ["weapon_category_id"], name: "index_weapon_types_on_weapon_category_id"
  end

end
