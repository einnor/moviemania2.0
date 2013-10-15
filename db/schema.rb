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

ActiveRecord::Schema.define(version: 20131015111551) do

  create_table "admins", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "cinemas", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cinemalogo"
  end

  create_table "comingsoons", force: true do |t|
    t.string   "title"
    t.text     "synopsis"
    t.string   "category"
    t.string   "youtubestub"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "comingsooncover"
    t.integer  "cinema_id"
  end

  create_table "comments", force: true do |t|
    t.integer  "nowshowing_id"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["nowshowing_id"], name: "index_comments_on_nowshowing_id"

  create_table "forumcomingsoons", force: true do |t|
    t.integer  "comingsoon_id"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "forumcomingsoons", ["comingsoon_id"], name: "index_forumcomingsoons_on_comingsoon_id"

  create_table "nowshowings", force: true do |t|
    t.string   "title"
    t.text     "synopsis"
    t.string   "youtubestub"
    t.decimal  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "category"
    t.string   "nowshowingcover"
    t.integer  "cinema_id"
  end

end
