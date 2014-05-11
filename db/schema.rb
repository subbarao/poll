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

ActiveRecord::Schema.define(version: 20140510064732) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "candidates", force: true do |t|
    t.string   "sex"
    t.integer  "age"
    t.string   "address"
    t.integer  "mobile"
    t.string   "email"
    t.string   "pan"
    t.string   "married"
    t.string   "spouse_name"
    t.string   "education"
    t.string   "occupation"
    t.integer  "income_for_2012_2013"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "districts", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nominations", force: true do |t|
    t.integer  "party_id"
    t.string   "candidate"
    t.integer  "seat_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "candidate_id"
  end

  add_index "nominations", ["party_id"], name: "index_nominations_on_party_id", using: :btree
  add_index "nominations", ["seat_id"], name: "index_nominations_on_seat_id", using: :btree

  create_table "parties", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "responses", force: true do |t|
    t.integer  "seat_id"
    t.integer  "user_id"
    t.integer  "nomination_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "responses", ["nomination_id"], name: "index_responses_on_nomination_id", using: :btree
  add_index "responses", ["seat_id"], name: "index_responses_on_seat_id", using: :btree
  add_index "responses", ["user_id"], name: "index_responses_on_user_id", using: :btree

  create_table "seats", force: true do |t|
    t.string   "type"
    t.string   "name"
    t.string   "incumbent"
    t.integer  "district_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "seats", ["district_id"], name: "index_seats_on_district_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
