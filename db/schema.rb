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

ActiveRecord::Schema.define(version: 20151107184553) do

  create_table "customers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.text     "address",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "customers_products", id: false, force: :cascade do |t|
    t.integer "customer_id", limit: 4, null: false
    t.integer "product_id",  limit: 4, null: false
  end

  create_table "customers_projects", id: false, force: :cascade do |t|
    t.integer "customer_id", limit: 4, null: false
    t.integer "project_id",  limit: 4, null: false
  end

  create_table "milestones", force: :cascade do |t|
    t.text     "name",       limit: 65535
    t.date     "exp_date"
    t.date     "act_date"
    t.text     "resources",  limit: 65535
    t.integer  "project_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "milestones", ["project_id"], name: "index_milestones_on_project_id", using: :btree

  create_table "projects", force: :cascade do |t|
    t.string   "Territory",  limit: 255
    t.date     "PODate"
    t.decimal  "Number",                 precision: 10
    t.string   "Customer",   limit: 255
    t.string   "Type",       limit: 255
    t.string   "Name",       limit: 255
    t.string   "PM",         limit: 255
    t.string   "Owner",      limit: 255
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "ptypes", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "FullName",   limit: 255
    t.date     "BDate"
    t.text     "Address",    limit: 65535
    t.string   "Telephone",  limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "territories", force: :cascade do |t|
    t.decimal  "code",                   precision: 10
    t.string   "name",       limit: 255
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_foreign_key "milestones", "projects"
end
