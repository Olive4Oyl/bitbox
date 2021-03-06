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

ActiveRecord::Schema.define(version: 20170106215046) do

  create_table "boxes", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.string   "sub_box_level"
    t.string   "sub_box_info"
    t.string   "sub_box_guide"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "price"
    t.integer  "age_recommendation"
    t.string   "image"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.integer  "subscriber_id"
    t.integer  "box_id"
    t.string   "level"
    t.string   "description"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "subtitle"
    t.string   "shipping_info"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.boolean  "subscribed",             default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "provider"
    t.string   "uid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["provider"], name: "index_users_on_provider"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid"], name: "index_users_on_uid"
  end

end
