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

ActiveRecord::Schema.define(version: 2018_09_02_174937) do

  create_table "bazes", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "children", force: :cascade do |t|
    t.string "fathers_id"
    t.string "name"
    t.date "dob"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lrcs", force: :cascade do |t|
    t.decimal "bd"
    t.string "rank"
    t.string "name"
    t.string "trade"
    t.date "closed"
    t.date "issued"
    t.decimal "iv_no"
    t.decimal "reg_sl"
    t.decimal "self"
    t.decimal "wife"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.decimal "bd"
    t.string "rank"
    t.string "name"
    t.string "trade"
    t.string "section"
    t.string "base"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ranks", force: :cascade do |t|
    t.decimal "sl_no"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trades", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wives", force: :cascade do |t|
    t.string "person_id"
    t.string "name"
    t.date "dob"
    t.date "dom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
