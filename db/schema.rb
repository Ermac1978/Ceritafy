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

ActiveRecord::Schema.define(version: 20141208151808) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "chapters", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "user_chapter"
    t.integer  "user_id"
    t.integer  "story_id"
    t.text     "user_text"
    t.integer  "chapter_num"
  end

  add_index "chapters", ["story_id"], name: "index_chapters_on_story_id"
  add_index "chapters", ["user_id"], name: "index_chapters_on_user_id"

  create_table "options", force: true do |t|
    t.integer  "chapter_id"
    t.string   "option_text"
    t.integer  "prev_chapter"
    t.integer  "next_chapter"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "next_chapter_id"
  end

  create_table "stories", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "user_story"
    t.integer  "user_id"
    t.string   "title"
    t.text     "user_text"
  end

  add_index "stories", ["user_id"], name: "index_stories_on_user_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
