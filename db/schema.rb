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

ActiveRecord::Schema.define(version: 20140915074935) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "characteristic_instances", force: true do |t|
    t.integer  "characteristic_id"
    t.string   "type"
    t.integer  "property_id"
    t.string   "string"
    t.decimal  "integer"
    t.boolean  "boolean"
    t.string   "values"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "characteristic_instances", ["characteristic_id"], name: "index_characteristic_instances_on_characteristic_id", using: :btree
  add_index "characteristic_instances", ["property_id"], name: "index_characteristic_instances_on_property_id", using: :btree

  create_table "characteristics", force: true do |t|
    t.string   "name"
    t.string   "characteristic_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "characteristics_property_types", id: false, force: true do |t|
    t.integer "characteristic_id"
    t.integer "property_type_id"
    t.string  "values"
    t.integer "order",             default: 1
    t.boolean "obligatory",        default: false
  end

  add_index "characteristics_property_types", ["characteristic_id", "property_type_id"], name: "index", unique: true, using: :btree
  add_index "characteristics_property_types", ["property_type_id"], name: "index_characteristics_property_types_on_property_type_id", using: :btree

  create_table "images", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "property_id"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
  end

  add_index "images", ["property_id"], name: "index_images_on_property_id", using: :btree

  create_table "locations", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "properties", force: true do |t|
    t.integer  "location_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "property_type_id"
  end

  add_index "properties", ["location_id"], name: "index_properties_on_location_id", using: :btree
  add_index "properties", ["property_type_id"], name: "index_properties_on_property_type_id", using: :btree
  add_index "properties", ["user_id"], name: "index_properties_on_user_id", using: :btree

  create_table "property_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "publication_types", force: true do |t|
    t.string   "name"
    t.integer  "publication_days"
    t.integer  "images_count"
    t.integer  "videos_count"
    t.decimal  "cost"
    t.boolean  "priority_on_search"
    t.boolean  "highlight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "publications", force: true do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.boolean  "active"
    t.integer  "property_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "operation_type"
    t.integer  "publication_type_id"
  end

  add_index "publications", ["property_id"], name: "index_publications_on_property_id", using: :btree
  add_index "publications", ["publication_type_id"], name: "index_publications_on_publication_type_id", using: :btree
  add_index "publications", ["user_id"], name: "index_publications_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "phone"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
