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

ActiveRecord::Schema.define(:version => 20130721235613) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
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
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "categories", :force => true do |t|
    t.string   "category"
    t.string   "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "evaluations", :force => true do |t|
    t.string   "category_name_1"
    t.string   "objective11"
    t.string   "objective11_comments"
    t.string   "objective11_eval_comments"
    t.integer  "objective11_qualifier"
    t.integer  "objective11_evalq"
    t.string   "nextpobjective11"
    t.string   "objective21"
    t.string   "objective21_comments"
    t.string   "objective21_eval_comments"
    t.integer  "objective21_qualifier"
    t.integer  "objective21_evalq"
    t.string   "nextpobjective21"
    t.string   "objective31"
    t.string   "objective31_comments"
    t.string   "objective31_eval_comments"
    t.integer  "objective31_qualifier"
    t.integer  "objective31_evalq"
    t.string   "nextpobjective31"
    t.string   "category_name_2"
    t.string   "objective12"
    t.string   "objective12_comments"
    t.string   "objective12_eval_comments"
    t.integer  "objective12_qualifier"
    t.integer  "objective12_evalq"
    t.string   "nextpobjective12"
    t.string   "objective22"
    t.string   "objective22_comments"
    t.string   "objective22_eval_comments"
    t.integer  "objective22_qualifier"
    t.integer  "objective22_evalq"
    t.string   "nextpobjective22"
    t.string   "objective32"
    t.string   "objective32_comments"
    t.string   "objective32_eval_comments"
    t.integer  "objective32_qualifier"
    t.integer  "objective32_evalq"
    t.string   "nextpobjective32"
    t.string   "category_name_3"
    t.string   "objective13"
    t.string   "objective13_comments"
    t.string   "objective13_eval_comments"
    t.integer  "objective13_qualifier"
    t.integer  "objective13_evalq"
    t.string   "nextpobjective13"
    t.string   "objective23"
    t.string   "objective23_comments"
    t.string   "objective23_eval_comments"
    t.integer  "objective23_qualifier"
    t.integer  "objective23_evalq"
    t.string   "nextpobjective23"
    t.string   "objective33"
    t.string   "objective33_comments"
    t.string   "objective33_eval_comments"
    t.integer  "objective33_qualifier"
    t.integer  "objective33_evalq"
    t.string   "category_name_4"
    t.string   "objective14"
    t.string   "objective14_comments"
    t.string   "objective14_eval_comments"
    t.integer  "objective14_qualifier"
    t.integer  "objective14_evalq"
    t.string   "nextpobjective14"
    t.string   "objective24"
    t.string   "objective24_comments"
    t.string   "objective24_eval_comments"
    t.integer  "objective24_qualifier"
    t.integer  "objective24_evalq"
    t.string   "nextpobjective24"
    t.string   "objective34"
    t.string   "objective34_comments"
    t.string   "objective34_eval_comments"
    t.integer  "objective34_qualifier"
    t.integer  "objective34_evalq"
    t.string   "nextpobjective34"
    t.string   "category_name_5"
    t.string   "objective15"
    t.string   "objective15_comments"
    t.string   "objective15_eval_comments"
    t.integer  "objective15_qualifier"
    t.integer  "objective15_evalq"
    t.string   "nextpobjective15"
    t.string   "objective25"
    t.string   "objective25_comments"
    t.string   "objective25_eval_comments"
    t.integer  "objective25_qualifier"
    t.integer  "objective25_evalq"
    t.string   "nextpobjective25"
    t.string   "objective35"
    t.string   "objective35_comments"
    t.string   "objective35_eval_comments"
    t.integer  "objective35_qualifier"
    t.integer  "objective35_evalq"
    t.string   "nextpobjective35"
    t.integer  "overalleval"
    t.integer  "user_id"
    t.integer  "year"
    t.integer  "evaluator_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.string   "marca"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "name"
    t.integer  "evaluator_id"
    t.boolean  "is_admin",               :default => false
    t.boolean  "is_evaluator",           :default => false
    t.boolean  "inactive",               :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "years", :force => true do |t|
    t.integer  "year"
    t.integer  "year_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
