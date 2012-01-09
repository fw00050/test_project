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

ActiveRecord::Schema.define(:version => 20120107193539) do

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.string   "short_description"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "picture_url"
  end

  create_table "records", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "telephone"
    t.date     "date_seen"
    t.string   "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "event"
  end

end
