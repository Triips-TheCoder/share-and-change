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

ActiveRecord::Schema[7.0].define(version: 2022_04_13_134727) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "capsules", force: :cascade do |t|
    t.bigint "charity_id", null: false
    t.bigint "need_id", null: false
    t.text "video"
    t.string "quote"
    t.text "poster"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["charity_id"], name: "index_capsules_on_charity_id"
    t.index ["need_id"], name: "index_capsules_on_need_id"
  end

  create_table "charities", force: :cascade do |t|
    t.string "logo"
    t.string "catchphrase"
    t.text "description"
    t.string "phone"
    t.string "email"
    t.text "website"
    t.text "adress"
    t.string "zipcode"
    t.string "city"
    t.string "country"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "needs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "capsules", "charities"
  add_foreign_key "capsules", "needs"
end
