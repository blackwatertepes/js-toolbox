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

ActiveRecord::Schema.define(:version => 20130427010501) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "libraries", :force => true do |t|
    t.integer  "github_id"
    t.string   "name"
    t.string   "author"
    t.text     "description"
    t.string   "website_url"
    t.string   "doc_url"
    t.integer  "category_id"
    t.datetime "pushed_at"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "likes", :force => true do |t|
    t.integer  "library_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "statuses", :force => true do |t|
    t.integer  "downloads"
    t.integer  "watchers"
    t.integer  "forks"
    t.integer  "issues"
    t.integer  "library_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
