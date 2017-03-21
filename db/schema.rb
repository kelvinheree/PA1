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

ActiveRecord::Schema.define(version: 20170321071657) do

  create_table "enrollments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "ucourse_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.index ["ucourse_id"], name: "index_enrollments_on_ucourse_id"
    t.index ["user_id"], name: "index_enrollments_on_user_id"
  end

  create_table "instructors", force: :cascade do |t|
    t.string   "middle"
    t.string   "email"
    t.string   "first"
    t.string   "last"
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.string   "type"
    t.text     "segments"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "term"
    t.string   "subject_id"
  end

  create_table "ucourses", force: :cascade do |t|
    t.float    "credits"
    t.text     "subjects"
    t.string   "name"
    t.text     "requirements"
    t.string   "description"
    t.string   "string"
    t.string   "continuity_id"
    t.string   "term"
    t.boolean  "independent_study"
    t.string   "type"
    t.string   "code"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "subject_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "email"
    t.index ["name"], name: "index_users_on_name", unique: true
  end

end
