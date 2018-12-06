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

ActiveRecord::Schema.define(version: 2018_12_06_141151) do

  create_table "investments", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "sector"
    t.integer "purchase_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["purchase_id"], name: "index_investments_on_purchase_id"
  end

  create_table "purchases", force: :cascade do |t|
    t.text "name"
    t.integer "price"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "imgsrc"
  end

  create_table "user_purchases", force: :cascade do |t|
    t.integer "user_id"
    t.integer "purchase_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["purchase_id"], name: "index_user_purchases_on_purchase_id"
    t.index ["user_id"], name: "index_user_purchases_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
  end

end
