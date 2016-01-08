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

ActiveRecord::Schema.define(version: 20160108205125) do

  create_table "daily_matches", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "option_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "links", force: :cascade do |t|
    t.string   "title"
    t.string   "url"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.integer  "zipcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "matched_user_id"
    t.integer  "status"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string   "title"
    t.integer  "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills_users", force: :cascade do |t|
    t.integer "skill_id"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "location_id"
    t.integer  "match_radius"
    t.string   "current_project"
    t.string   "provider"
    t.string   "uid"
    t.string   "oauth_token"
    t.string   "oauth_expires_at"
    t.string   "profile_picture"
    t.datetime "time_of_match",    default: '2016-01-06 20:45:08'
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
  end

end
