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

ActiveRecord::Schema.define(version: 20140902171201) do

  create_table "l_categories", force: true do |t|
    t.string   "l_category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "m_categories", force: true do |t|
    t.string   "m_category"
    t.integer  "l_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "product_name"
    t.string   "brand"
    t.string   "model"
    t.string   "series"
    t.integer  "new_price"
    t.integer  "old_price"
    t.string   "img_url"
    t.string   "kakaku_url"
    t.string   "l_category"
    t.string   "m_category"
    t.string   "s_category"
    t.string   "new_url"
    t.text     "spec"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["product_name"], name: "index_products_on_product_name"

  create_table "s_categories", force: true do |t|
    t.string   "s_category"
    t.integer  "m_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
