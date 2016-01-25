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

ActiveRecord::Schema.define(version: 20160115171006) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agencias", force: :cascade do |t|
    t.string   "nombre"
    t.string   "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evaluaciones", force: :cascade do |t|
    t.integer  "turno_id"
    t.string   "pregunta1"
    t.integer  "resultado1"
    t.string   "pregunta2"
    t.integer  "resultado2"
    t.string   "pregunta3"
    t.integer  "resultado3"
    t.string   "pregunta4"
    t.integer  "resultado4"
    t.integer  "resultado_total"
    t.text     "comentario"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "evaluaciones", ["turno_id"], name: "index_evaluaciones_on_turno_id", using: :btree

  create_table "turnos", force: :cascade do |t|
    t.string   "numero"
    t.string   "nombre"
    t.string   "asunto"
    t.text     "descripcion"
    t.datetime "hora_ingreso"
    t.datetime "hora_atencion"
    t.datetime "hora_finalizacion"
    t.integer  "usuario_id"
    t.integer  "estado"
    t.integer  "agencia_id"
    t.text     "comentario"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "turnos", ["agencia_id"], name: "index_turnos_on_agencia_id", using: :btree

  create_table "usuarios", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "correo"
    t.string   "login"
    t.integer  "estado"
    t.string   "password_digest"
    t.integer  "agencia_id"
    t.string   "rol"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "usuarios", ["agencia_id"], name: "index_usuarios_on_agencia_id", using: :btree

  add_foreign_key "evaluaciones", "turnos"
  add_foreign_key "turnos", "agencias"
  add_foreign_key "usuarios", "agencias"
end
