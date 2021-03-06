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

ActiveRecord::Schema.define(:version => 20160727184927) do

  create_table "authors", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "authors", ["name"], :name => "index_authors_on_name"

  create_table "books", :force => true do |t|
    t.integer  "author_id"
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "books", ["author_id"], :name => "index_books_on_author_id"
  add_index "books", ["title"], :name => "index_books_on_title"

  create_table "books_subjects", :force => true do |t|
    t.integer "book_id"
    t.integer "subject_id"
  end

  add_index "books_subjects", ["book_id"], :name => "index_book_subjects_on_book_id"
  add_index "books_subjects", ["subject_id"], :name => "index_book_subjects_on_subject_id"

  create_table "subjects", :force => true do |t|
    t.string   "subject"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "subjects", ["subject"], :name => "index_subjects_on_subject"

end
