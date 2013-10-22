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

ActiveRecord::Schema.define(version: 20131022001046) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: true do |t|
    t.integer  "user_id"
    t.string   "uid"
    t.string   "username"
    t.string   "oauth_token"
    t.string   "oauth_secret"
    t.datetime "oauth_expires"
  end

  add_index "accounts", ["user_id"], name: "index_accounts_on_user_id", using: :btree

  create_table "addresses", force: true do |t|
    t.integer "user_id"
    t.string  "address_line_1"
    t.string  "address_line_2"
    t.string  "city"
    t.string  "state"
    t.string  "zip"
    t.string  "country"
  end

  add_index "addresses", ["user_id"], name: "index_addresses_on_user_id", using: :btree

  create_table "emails", force: true do |t|
    t.integer  "user_id"
    t.string   "email"
    t.boolean  "primary",           default: false
    t.string   "confirmation_code"
    t.datetime "confirmed_at"
  end

  add_index "emails", ["user_id"], name: "index_emails_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "prefix"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "suffix"
    t.string   "phone"
    t.datetime "icla_signed_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end
end
