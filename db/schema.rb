
ActiveRecord::Schema.define(version: 2020_05_01_003023) do

  create_table "fish", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "lake_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["lake_id"], name: "index_fish_on_lake_id"
  end

  create_table "lakes", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "fish", "lakes"
end
