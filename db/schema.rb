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

ActiveRecord::Schema.define(version: 20170606031954) do

  create_table "audits", force: :cascade do |t|
    t.string   "identification"
    t.text     "description"
    t.date     "datetime"
    t.time     "schedule"
    t.string   "kind"
    t.string   "completed"
    t.integer  "project_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "audits", ["project_id"], name: "index_audits_on_project_id"

  create_table "corrective_actions", force: :cascade do |t|
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "name"
    t.text     "description"
    t.integer  "unconformity_id"
    t.string   "completed"
  end

  add_index "corrective_actions", ["unconformity_id"], name: "index_corrective_actions_on_unconformity_id"

  create_table "member_roles", force: :cascade do |t|
    t.integer  "member_id"
    t.integer  "role_id"
    t.integer  "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "member_roles", ["member_id"], name: "index_member_roles_on_member_id"
  add_index "member_roles", ["role_id"], name: "index_member_roles_on_role_id"
  add_index "member_roles", ["team_id"], name: "index_member_roles_on_team_id"

  create_table "members", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "profile"
    t.string   "cpf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pratices", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "pratices_procedures", force: :cascade do |t|
    t.integer  "procedure_id"
    t.integer  "pratice_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "pratices_procedures", ["pratice_id"], name: "index_pratices_procedures_on_pratice_id"
  add_index "pratices_procedures", ["procedure_id"], name: "index_pratices_procedures_on_procedure_id"

  create_table "procedures", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "procedures_projects", force: :cascade do |t|
    t.integer  "procedure_id"
    t.integer  "project_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "procedures_projects", ["procedure_id"], name: "index_procedures_projects_on_procedure_id"
  add_index "procedures_projects", ["project_id"], name: "index_procedures_projects_on_project_id"

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.string   "client"
    t.text     "description"
    t.date     "date_ready"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.date     "initial_date"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "teams", ["project_id"], name: "index_teams_on_project_id"

  create_table "unconformities", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "audit_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "unconformities", ["audit_id"], name: "index_unconformities_on_audit_id"

end
