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

ActiveRecord::Schema.define(version: 2019_02_12_104010) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string "title", default: "", null: false
    t.string "content", default: "", null: false
    t.string "author", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "tags"
    t.integer "likes", default: 0
    t.integer "dislikes", default: 0
    t.index ["author"], name: "index_articles_on_author"
    t.index ["tags"], name: "index_articles_on_tags"
    t.index ["title"], name: "index_articles_on_title"
  end

  create_table "author_article_counts", force: :cascade do |t|
    t.string "author_name"
    t.integer "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_name"], name: "index_author_article_counts_on_author_name"
  end

  create_table "tags", force: :cascade do |t|
    t.string "tag_name"
    t.index ["tag_name"], name: "index_tags_on_tag_name"
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "email", null: false
    t.string "password", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email"
    t.index ["password"], name: "index_users_on_password"
    t.index ["username"], name: "index_users_on_username"
  end

end
