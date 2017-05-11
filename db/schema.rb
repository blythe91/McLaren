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

ActiveRecord::Schema.define(version: 20170511024729) do

  create_table "academic_levels", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "advances", force: :cascade do |t|
    t.string   "description"
    t.integer  "unity_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["unity_id"], name: "index_advances_on_unity_id"
  end

  create_table "charges", force: :cascade do |t|
    t.string   "description"
    t.integer  "structure_level_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["structure_level_id"], name: "index_charges_on_structure_level_id"
  end

  create_table "districts", force: :cascade do |t|
    t.string   "description"
    t.integer  "region_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["region_id"], name: "index_districts_on_region_id"
  end

  create_table "document_types", force: :cascade do |t|
    t.string   "description"
    t.string   "tok"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string   "description"
    t.integer  "district_id"
    t.integer  "parish_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["district_id"], name: "index_groups_on_district_id"
    t.index ["parish_id"], name: "index_groups_on_parish_id"
  end

  create_table "municipalities", force: :cascade do |t|
    t.string   "description"
    t.integer  "State_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["State_id"], name: "index_municipalities_on_State_id"
  end

  create_table "nationalities", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "ocupations", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "parishes", force: :cascade do |t|
    t.string   "description"
    t.integer  "Municipality_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["Municipality_id"], name: "index_parishes_on_Municipality_id"
  end

  create_table "people", force: :cascade do |t|
    t.integer  "dnis"
    t.date     "birth"
    t.date     "promise_day"
    t.integer  "spr_person_id"
    t.integer  "parish_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["parish_id"], name: "index_people_on_parish_id"
    t.index ["spr_person_id"], name: "index_people_on_spr_person_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "specialties", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "spr_people", force: :cascade do |t|
    t.string   "document"
    t.boolean  "asv_member"
    t.boolean  "representative"
    t.string   "first_name"
    t.string   "second_name"
    t.string   "first_last_name"
    t.string   "second_last_name"
    t.string   "gender"
    t.string   "mobile_phone"
    t.string   "phone"
    t.string   "main_email"
    t.string   "second_email"
    t.string   "address"
    t.integer  "ocupation_id"
    t.integer  "nationality_id"
    t.integer  "academic_level_id"
    t.integer  "relationship_id"
    t.integer  "Document_type_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["Document_type_id"], name: "index_spr_people_on_Document_type_id"
    t.index ["academic_level_id"], name: "index_spr_people_on_academic_level_id"
    t.index ["nationality_id"], name: "index_spr_people_on_nationality_id"
    t.index ["ocupation_id"], name: "index_spr_people_on_ocupation_id"
    t.index ["relationship_id"], name: "index_spr_people_on_relationship_id"
  end

  create_table "states", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "structure_levels", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "training_levels", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "unities", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
