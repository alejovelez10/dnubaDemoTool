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

ActiveRecord::Schema.define(version: 2018_10_31_160330) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "acta", force: :cascade do |t|
    t.date "fecha"
    t.text "description"
    t.text "signature_delivery"
    t.text "signature_requests"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "employed_id"
  end

  create_table "employeds", force: :cascade do |t|
    t.string "name"
    t.integer "cedula"
    t.string "cargo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items_tools", force: :cascade do |t|
    t.integer "tools_id"
    t.integer "acta_id"
    t.integer "quantity"
    t.integer "unit_prince"
    t.integer "total_prince"
    t.text "firm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "actum_id"
  end

  create_table "tools", force: :cascade do |t|
    t.string "name"
    t.integer "prince"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
