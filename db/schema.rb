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

ActiveRecord::Schema.define(version: 20180515171000) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agencies", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone_no"
    t.string "tax_code"
    t.bigint "area_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_agencies_on_area_id"
  end

  create_table "areas", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contract_details", force: :cascade do |t|
    t.integer "amount"
    t.integer "unit", default: 0
    t.bigint "product_id"
    t.bigint "contract_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contract_id"], name: "index_contract_details_on_contract_id"
    t.index ["product_id"], name: "index_contract_details_on_product_id"
  end

  create_table "contracts", force: :cascade do |t|
    t.date "date_create"
    t.decimal "total_money"
    t.bigint "user_id"
    t.bigint "provider_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "contract_detail_id"
    t.index ["contract_detail_id"], name: "index_contracts_on_contract_detail_id"
    t.index ["provider_id"], name: "index_contracts_on_provider_id"
    t.index ["user_id"], name: "index_contracts_on_user_id"
  end

  create_table "delivery_slip_details", force: :cascade do |t|
    t.integer "amount"
    t.string "unit_price", default: "vnđ"
    t.bigint "product_id"
    t.bigint "delivery_slip_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["delivery_slip_id"], name: "index_delivery_slip_details_on_delivery_slip_id"
    t.index ["product_id"], name: "index_delivery_slip_details_on_product_id"
  end

  create_table "delivery_slips", force: :cascade do |t|
    t.date "date_deliver"
    t.date "date_received"
    t.decimal "total_money"
    t.bigint "agency_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["agency_id"], name: "index_delivery_slips_on_agency_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "price"
    t.string "unit", default: "vnđ"
    t.date "date_import"
    t.date "date_export"
    t.integer "number_import"
    t.integer "number_export"
    t.integer "number_stock"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "provider_id"
    t.bigint "category_id"
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["provider_id"], name: "index_products_on_provider_id"
  end

  create_table "providers", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone_no"
    t.string "tax_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "receipt_slips", force: :cascade do |t|
    t.date "date_receipt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "contract_id"
    t.index ["contract_id"], name: "index_receipt_slips_on_contract_id"
    t.index ["user_id"], name: "index_receipt_slips_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "area_id"
    t.string "name"
    t.string "gender"
    t.string "address"
    t.string "phone_no"
    t.date "birth_date"
    t.index ["area_id"], name: "index_users_on_area_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "agencies", "areas"
  add_foreign_key "contracts", "providers"
  add_foreign_key "contracts", "users"
  add_foreign_key "delivery_slip_details", "delivery_slips"
  add_foreign_key "delivery_slip_details", "products"
  add_foreign_key "delivery_slips", "agencies"
end
