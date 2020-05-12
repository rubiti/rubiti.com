ActiveRecord::Schema.define(version: 2020_05_12_142603) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "message"
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
