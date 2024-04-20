# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_04_20_064307) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.string "classname"
    t.integer "level"
    t.integer "range"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "farming_data", force: :cascade do |t|
    t.integer "expHour"
    t.integer "mesoHour"
    t.integer "enemyHour"
    t.bigint "characters_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "map_id", null: false
    t.index ["characters_id"], name: "index_farming_data_on_characters_id"
    t.index ["map_id"], name: "index_farming_data_on_map_id"
  end

  create_table "maps", force: :cascade do |t|
    t.string "name"
    t.integer "minimumLevel"
    t.boolean "prerequisite"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "farming_data", "characters", column: "characters_id"
  add_foreign_key "farming_data", "maps"
end
