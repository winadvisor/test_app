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

ActiveRecord::Schema.define(version: 20170528191559) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree
  end

  create_table "entities", force: :cascade do |t|
    t.string   "code",       null: false
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fund_classes", force: :cascade do |t|
    t.string   "code",                         null: false
    t.string   "name",                         null: false
    t.integer  "fund_id",                      null: false
    t.float    "management_fee", default: 0.0, null: false
    t.float    "incentive_fee",  default: 0.0, null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["fund_id"], name: "index_fund_classes_on_fund_id", using: :btree
  end

  create_table "fund_investors", force: :cascade do |t|
    t.integer  "fund_class_id", null: false
    t.integer  "entity_id",     null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["entity_id"], name: "index_fund_investors_on_entity_id", using: :btree
    t.index ["fund_class_id"], name: "index_fund_investors_on_fund_class_id", using: :btree
  end

  create_table "fund_series", force: :cascade do |t|
    t.string   "code",       null: false
    t.string   "name",       null: false
    t.integer  "fund_id",    null: false
    t.date     "start_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fund_id"], name: "index_fund_series_on_fund_id", using: :btree
  end

  create_table "funds", force: :cascade do |t|
    t.string   "code",       null: false
    t.string   "name",       null: false
    t.string   "type",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "investment_series", force: :cascade do |t|
    t.integer  "investment_id",  null: false
    t.integer  "fund_series_id", null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["fund_series_id"], name: "index_investment_series_on_fund_series_id", using: :btree
    t.index ["investment_id"], name: "index_investment_series_on_investment_id", using: :btree
  end

  create_table "investments", force: :cascade do |t|
    t.integer  "fund_investor_id",     null: false
    t.float    "amount",               null: false
    t.string   "capital_account_code", null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["fund_investor_id"], name: "index_investments_on_fund_investor_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
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
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "fund_classes", "funds"
  add_foreign_key "fund_investors", "entities"
  add_foreign_key "fund_investors", "fund_classes"
  add_foreign_key "fund_series", "funds"
  add_foreign_key "investment_series", "fund_series"
  add_foreign_key "investment_series", "investments"
  add_foreign_key "investments", "fund_investors"
end
