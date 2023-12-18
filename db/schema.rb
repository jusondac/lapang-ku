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

ActiveRecord::Schema[7.0].define(version: 2023_12_15_024404) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "field_types", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fields", force: :cascade do |t|
    t.string "name"
    t.bigint "field_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["field_type_id"], name: "index_fields_on_field_type_id"
  end

  create_table "memberships", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.bigint "type_membership_id", null: false
    t.integer "point"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type_membership_id"], name: "index_memberships_on_type_membership_id"
  end

  create_table "order_details", force: :cascade do |t|
    t.bigint "order_id", null: false
    t.integer "total"
    t.integer "tax"
    t.integer "subtotal"
    t.integer "discount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_details_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "rent_id", null: false
    t.integer "status"
    t.integer "payment_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rent_id"], name: "index_orders_on_rent_id"
  end

  create_table "payments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rent_details", force: :cascade do |t|
    t.bigint "membership_id"
    t.string "behalf"
    t.integer "rent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["membership_id"], name: "index_rent_details_on_membership_id"
  end

  create_table "rent_memberships", force: :cascade do |t|
    t.integer "membership_id", null: false
    t.integer "rent_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rents", force: :cascade do |t|
    t.integer "field_id", null: false
    t.datetime "start"
    t.datetime "finish"
    t.integer "hours"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "type_memberships", force: :cascade do |t|
    t.string "name"
    t.integer "discount"
    t.integer "charge"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "fields", "field_types"
  add_foreign_key "memberships", "type_memberships"
  add_foreign_key "order_details", "orders"
  add_foreign_key "orders", "rents"
  add_foreign_key "rent_details", "memberships"
end
