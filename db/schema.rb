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

ActiveRecord::Schema.define(version: 20150612203340) do

  create_table "assets", force: true do |t|
    t.integer  "asset_type"
    t.string   "name"
    t.text     "description"
    t.integer  "durability"
    t.integer  "story_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "choices", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "position"
    t.integer  "rule_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rules", force: true do |t|
    t.integer  "scene_id"
    t.integer  "asset_id"
    t.integer  "state"
    t.integer  "inequality"
    t.integer  "inequality_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scenes", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "story_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stories", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "default_char_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
