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

ActiveRecord::Schema.define(version: 20131008001554) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "contacts", force: true do |t|
    t.string   "name"
    t.string   "cell"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts_properties", id: false, force: true do |t|
    t.integer "contact_id"
    t.integer "property_id"
  end

  create_table "properties", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "street_1"
    t.string   "street_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "size"
    t.string   "price"
    t.string   "property_type"
    t.boolean  "bank_owned"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.boolean  "lease"
    t.boolean  "sale"
    t.string   "attached_image_file_name"
    t.string   "attached_image_content_type"
    t.integer  "attached_image_file_size"
    t.datetime "attached_image_updated_at"
    t.string   "attached_pdf_file_name"
    t.string   "attached_pdf_content_type"
    t.integer  "attached_pdf_file_size"
    t.datetime "attached_pdf_updated_at"
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "gmaps"
    t.string   "submarket"
    t.string   "property_types",                                           array: true
    t.boolean  "sublease",                    default: false
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.string   "session_token"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
