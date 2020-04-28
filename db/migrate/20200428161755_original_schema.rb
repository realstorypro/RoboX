class OriginalSchema < ActiveRecord::Migration[6.0]
  def change
    create_table "blueprints", force: :cascade do |t|
      t.string "name"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.json "settings"
    end

    create_table "builds", force: :cascade do |t|
      t.string "name"
      t.string "url"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.integer "status"
      t.bigint "blueprint_id"
      t.json "settings"
      t.string "app"
      t.string "pipeline"
      t.index ["blueprint_id"], name: "index_builds_on_blueprint_id"
    end
  end
end
