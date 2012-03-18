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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120318171115) do

  create_table "brands", :force => true do |t|
    t.string   "name"
    t.string   "page"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id"
    t.integer  "influence"
  end

  create_table "categories", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consumers", :force => true do |t|
    t.string   "name"
    t.string   "gender"
    t.integer  "age"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facebooks", :force => true do |t|
    t.string   "appid"
    t.string   "appsecrect"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "consumer_id"
  end

  create_table "influences", :force => true do |t|
    t.integer  "influence"
    t.integer  "mentions"
    t.integer  "networkReplies"
    t.boolean  "fan"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "consumer_id"
    t.integer  "brand_id"
  end

end
