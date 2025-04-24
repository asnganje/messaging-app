ActiveRecord::Schema[8.0].define(version: 2025_04_24_114459) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "messages", "users"
end
