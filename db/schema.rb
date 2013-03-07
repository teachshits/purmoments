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

ActiveRecord::Schema.define(:version => 20130307061752) do

  create_table "ajo_contact_messages", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email_address"
    t.string   "subject"
    t.text     "message"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "ajo_register_users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.string   "mailing_address"
    t.string   "city"
    t.string   "province"
    t.date     "date_of_birth"
    t.boolean  "rules_and_regulations"
    t.boolean  "opt_in"
    t.boolean  "opt_in_confirmed"
    t.boolean  "age_of_consent"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
  end

  add_index "ajo_register_users", ["confirmation_token"], :name => "index_ajo_register_users_on_confirmation_token", :unique => true
  add_index "ajo_register_users", ["reset_password_token"], :name => "index_ajo_register_users_on_reset_password_token", :unique => true

  create_table "entries", :force => true do |t|
    t.integer  "user_id"
    t.integer  "facebook_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.string   "location"
    t.integer  "challenge_id"
    t.string   "entry_code"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "facts", :force => true do |t|
    t.text     "english_fact"
    t.text     "french_fact"
    t.string   "sources"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "words", :force => true do |t|
    t.date     "date"
    t.string   "english_word"
    t.string   "french_word"
    t.string   "image_url"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
