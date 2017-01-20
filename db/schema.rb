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

ActiveRecord::Schema.define(version: 20170119051704) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bro_hobbies", force: :cascade do |t|
    t.integer  "bro_id"
    t.integer  "hobby_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bro_id"], name: "index_bro_hobbies_on_bro_id", using: :btree
    t.index ["hobby_id"], name: "index_bro_hobbies_on_hobby_id", using: :btree
  end

  create_table "bros", force: :cascade do |t|
    t.string   "name"
    t.string   "college"
    t.string   "gym"
    t.string   "sport"
    t.string   "team"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hobbies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "bro_hobbies", "bros"
  add_foreign_key "bro_hobbies", "hobbies"
end
