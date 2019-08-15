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

ActiveRecord::Schema.define(version: 2019_08_15_211719) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string "data_file_name", null: false
    t.string "data_content_type"
    t.integer "data_file_size"
    t.string "data_fingerprint"
    t.string "type", limit: 30
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type"
  end

  create_table "content_locales", force: :cascade do |t|
    t.string "name"
    t.string "hreflang_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "item_locales", force: :cascade do |t|
    t.bigint "item_id"
    t.bigint "content_locale_id"
    t.string "list_title"
    t.string "list_summary"
    t.string "link"
    t.string "page_title"
    t.text "page_content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["content_locale_id"], name: "index_item_locales_on_content_locale_id"
    t.index ["item_id"], name: "index_item_locales_on_item_id"
  end

  create_table "items", force: :cascade do |t|
    t.bigint "page_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["page_id"], name: "index_items_on_page_id"
  end

  create_table "menu_locales", force: :cascade do |t|
    t.bigint "menu_id"
    t.bigint "content_locale_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["content_locale_id"], name: "index_menu_locales_on_content_locale_id"
    t.index ["menu_id"], name: "index_menu_locales_on_menu_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "page_locales", force: :cascade do |t|
    t.bigint "page_id"
    t.bigint "content_locale_id"
    t.string "menu_title"
    t.string "page_title"
    t.string "link"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["content_locale_id"], name: "index_page_locales_on_content_locale_id"
    t.index ["page_id"], name: "index_page_locales_on_page_id"
  end

  create_table "pages", force: :cascade do |t|
    t.bigint "menu_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_id"], name: "index_pages_on_menu_id"
  end

  create_table "translations", force: :cascade do |t|
    t.string "locale"
    t.string "key"
    t.text "value"
    t.text "interpolations"
    t.boolean "is_proc", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "item_locales", "content_locales"
  add_foreign_key "item_locales", "items"
  add_foreign_key "items", "pages"
  add_foreign_key "menu_locales", "content_locales"
  add_foreign_key "menu_locales", "menus"
  add_foreign_key "page_locales", "content_locales"
  add_foreign_key "page_locales", "pages"
  add_foreign_key "pages", "menus"
end
