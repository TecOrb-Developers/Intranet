# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150217112529) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accesses", force: true do |t|
    t.integer  "user_id"
    t.integer  "accessable_id"
    t.string   "accessable_type", default: "", null: false
    t.string   "role",            default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accesses", ["user_id"], name: "index_accesses_on_user_id", using: :btree

  create_table "actions", force: true do |t|
    t.integer  "communication_id"
    t.string   "title",            default: "", null: false
    t.text     "description",      default: "", null: false
    t.integer  "assigned_to"
    t.integer  "assigned_by"
    t.date     "due_date",                      null: false
    t.date     "date_completed",                null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "actions", ["communication_id"], name: "index_actions_on_communication_id", using: :btree

  create_table "attachments", force: true do |t|
    t.integer  "user_id"
    t.integer  "communication_id"
    t.integer  "category_id"
    t.string   "file_type",        default: "", null: false
    t.string   "file_name",        default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "attachments", ["category_id"], name: "index_attachments_on_category_id", using: :btree
  add_index "attachments", ["communication_id"], name: "index_attachments_on_communication_id", using: :btree
  add_index "attachments", ["user_id"], name: "index_attachments_on_user_id", using: :btree

  create_table "categories", force: true do |t|
    t.string   "category_type", default: "", null: false
    t.string   "name",          default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.integer  "user_id"
    t.integer  "communication_id"
    t.text     "content",          default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["communication_id"], name: "index_comments_on_communication_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "communications", force: true do |t|
    t.string   "title",           default: "",       null: false
    t.string   "details",         default: "",       null: false
    t.string   "privacy",         default: "public", null: false
    t.integer  "department_id"
    t.integer  "project_id"
    t.integer  "organisation_id"
    t.integer  "contact_id"
    t.integer  "category_id"
    t.integer  "sub_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "communications", ["category_id"], name: "index_communications_on_category_id", using: :btree
  add_index "communications", ["contact_id"], name: "index_communications_on_contact_id", using: :btree
  add_index "communications", ["department_id"], name: "index_communications_on_department_id", using: :btree
  add_index "communications", ["organisation_id"], name: "index_communications_on_organisation_id", using: :btree
  add_index "communications", ["project_id"], name: "index_communications_on_project_id", using: :btree
  add_index "communications", ["sub_category_id"], name: "index_communications_on_sub_category_id", using: :btree

  create_table "contacts", force: true do |t|
    t.string   "first_name",  default: "", null: false
    t.string   "surname",     default: "", null: false
    t.string   "email",       default: "", null: false
    t.string   "phone",       default: "", null: false
    t.string   "mobile",      default: "", null: false
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contacts", ["category_id"], name: "index_contacts_on_category_id", using: :btree

  create_table "departments", force: true do |t|
    t.string   "name",       default: "", null: false
    t.text     "blurb",      default: "", null: false
    t.string   "privacy",    default: "", null: false
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "departments", ["user_id"], name: "index_departments_on_user_id", using: :btree

  create_table "locations", force: true do |t|
    t.string   "name",            default: "", null: false
    t.string   "phone",           default: "", null: false
    t.string   "fax",             default: "", null: false
    t.string   "address",         default: "", null: false
    t.string   "state",           default: "", null: false
    t.string   "postcode",        default: "", null: false
    t.string   "email",           default: "", null: false
    t.integer  "organisation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locations", ["organisation_id"], name: "index_locations_on_organisation_id", using: :btree

  create_table "organisations", force: true do |t|
    t.string   "name",           default: "", null: false
    t.string   "alternate_name", default: "", null: false
    t.text     "description",    default: "", null: false
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "organisations", ["category_id"], name: "index_organisations_on_category_id", using: :btree

  create_table "projects", force: true do |t|
    t.string   "name",          default: "",       null: false
    t.integer  "department_id"
    t.text     "aim",           default: "",       null: false
    t.text     "description",   default: "",       null: false
    t.text     "audience",      default: "",       null: false
    t.text     "outcomes",      default: "",       null: false
    t.integer  "user_id"
    t.string   "privacy",       default: "public", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "projects", ["department_id"], name: "index_projects_on_department_id", using: :btree
  add_index "projects", ["user_id"], name: "index_projects_on_user_id", using: :btree

  create_table "sub_categories", force: true do |t|
    t.integer  "category_id"
    t.string   "name",        default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sub_categories", ["category_id"], name: "index_sub_categories_on_category_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",         null: false
    t.string   "encrypted_password",     default: "",         null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,          null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username",               default: "",         null: false
    t.string   "first_name",             default: "",         null: false
    t.string   "last_name",              default: "",         null: false
    t.string   "signature",              default: "",         null: false
    t.text     "blurb",                  default: "",         null: false
    t.string   "extension",              default: "",         null: false
    t.string   "mobile",                 default: "",         null: false
    t.string   "work_days",              default: "",         null: false
    t.string   "home_address",           default: "",         null: false
    t.string   "home_suburb",            default: "",         null: false
    t.string   "home_post_code",         default: "",         null: false
    t.string   "kin_contact",            default: "",         null: false
    t.string   "kin_phone",              default: "",         null: false
    t.string   "kin_relation",           default: "",         null: false
    t.string   "role",                   default: "standard", null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
