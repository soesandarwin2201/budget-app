ActiveRecord::Schema[7.0].define(version: 2023_03_28_043408) do
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.bigint "users_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_categories_on_users_id"
  end

  create_table "category_details", force: :cascade do |t|
    t.string "name"
    t.integer "amount"
    t.integer "author_id"
    t.bigint "categories_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_category_details_on_author_id"
    t.index ["categories_id"], name: "index_category_details_on_categories_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "categories", "users", column: "users_id"
  add_foreign_key "category_details", "categories", column: "categories_id"
  add_foreign_key "category_details", "users", column: "author_id"
end
