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

ActiveRecord::Schema.define(version: 20170512041312) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree
  end

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "entidades", force: :cascade do |t|
    t.string   "descripcion", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "estados", force: :cascade do |t|
    t.integer  "situacion_id", null: false
    t.string   "descripcion",  null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["situacion_id"], name: "index_estados_on_situacion_id", using: :btree
  end

  create_table "intro_messages", force: :cascade do |t|
    t.text "content", null: false
  end

  create_table "resultados", force: :cascade do |t|
    t.string   "descripcion", null: false
    t.integer  "estado_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["estado_id"], name: "index_resultados_on_estado_id", using: :btree
  end

  create_table "situaciones", force: :cascade do |t|
    t.integer  "entidad_id",  null: false
    t.string   "descripcion", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["entidad_id"], name: "index_situaciones_on_entidad_id", using: :btree
  end

  create_table "subentidades", force: :cascade do |t|
    t.string   "descripcion", null: false
    t.integer  "entidad_id",  null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["entidad_id"], name: "index_subentidades_on_entidad_id", using: :btree
  end

  add_foreign_key "estados", "situaciones"
  add_foreign_key "resultados", "estados"
  add_foreign_key "situaciones", "entidades"
  add_foreign_key "subentidades", "entidades"
end
