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

ActiveRecord::Schema.define(:version => 20130516191116) do

  create_table "allowed_states", :force => true do |t|
    t.integer  "customer_id"
    t.integer  "state_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "finance_customers", :force => true do |t|
    t.string   "name"
    t.boolean  "active"
    t.integer  "view_limit"
    t.date     "date_limit"
    t.boolean  "admin"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "finance_leads", :force => true do |t|
    t.string   "name_first"
    t.string   "name_last"
    t.string   "address"
    t.string   "city"
    t.string   "phone_home"
    t.string   "email"
    t.string   "is_interested_in"
    t.string   "home_is_used_for"
    t.string   "home_is_a"
    t.string   "home_is_on"
    t.string   "year_home_was_built"
    t.string   "credit_standing"
    t.string   "contact_by"
    t.string   "best_time_to_call"
    t.integer  "state_id"
    t.text     "comments"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "phone_work"
  end

  create_table "states", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "abbreviation"
  end

end
