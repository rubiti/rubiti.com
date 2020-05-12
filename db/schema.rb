# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_12_215149) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "message"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "contents", force: :cascade do |t|
    t.string "banner_title_1"
    t.string "banner_content_1"
    t.string "banner_title_2"
    t.string "banner_content_2"
    t.string "banner_title_3"
    t.string "banner_content_3"
    t.string "wrapper_title"
    t.string "wrapper_description"
    t.string "highlight_title_1"
    t.string "highlight_content_1"
    t.string "highlight_title_2"
    t.string "highlight_content_2"
    t.string "highlight_title_3"
    t.string "highlight_content_3"
    t.string "highlight_title_4"
    t.string "highlight_content_4"
    t.string "cta_title"
    t.string "cta_content"
    t.string "contact_title"
    t.string "contact_content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "information", force: :cascade do |t|
    t.string "name"
    t.string "short_description"
    t.string "description"
    t.string "phone"
    t.string "email"
    t.string "site"
    t.string "location"
    t.string "facebook"
    t.string "linkedin"
    t.string "github"
    t.string "copyright"
    t.string "copyright_short"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.boolean "admin"
    t.boolean "superadmin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
  end

end
