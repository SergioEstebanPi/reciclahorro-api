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

ActiveRecord::Schema.define(version: 20181014161232) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name"
    t.string "record_gid"
    t.integer "blob_id"
    t.time "created_at"
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_gid", "blob_id"], name: "index_active_storage_attachments_on_record_gid_and_blob_id", unique: true
    t.index ["record_gid", "name"], name: "index_active_storage_attachments_on_record_gid_and_name"
    t.index ["record_gid"], name: "index_active_storage_attachments_on_record_gid"
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key"
    t.string "filename"
    t.string "content_type"
    t.text "metadata"
    t.integer "byte_size"
    t.string "checksum"
    t.time "created_at"
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "almacenes", force: :cascade do |t|
    t.string "nombre"
    t.string "nit"
    t.text "imagen"
    t.bigint "user_id"
    t.decimal "tipo"
    t.string "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_almacenes_on_user_id"
  end

  create_table "beneficios", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "entrega_id"
    t.decimal "estado"
    t.text "codigobarras"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["entrega_id"], name: "index_beneficios_on_entrega_id"
    t.index ["user_id"], name: "index_beneficios_on_user_id"
  end

  create_table "descuentos", force: :cascade do |t|
    t.string "titulo"
    t.text "descripcion"
    t.decimal "porcentaje"
    t.bigint "almacen_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["almacen_id"], name: "index_descuentos_on_almacen_id"
  end

  create_table "entregas", force: :cascade do |t|
    t.bigint "vecino_id"
    t.bigint "recolector_id"
    t.bigint "solicitud_id"
    t.bigint "oferta_id"
    t.decimal "peso"
    t.decimal "estadoresiduo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["oferta_id"], name: "index_entregas_on_oferta_id"
    t.index ["recolector_id"], name: "index_entregas_on_recolector_id"
    t.index ["solicitud_id"], name: "index_entregas_on_solicitud_id"
    t.index ["vecino_id"], name: "index_entregas_on_vecino_id"
  end

  create_table "ofertas", force: :cascade do |t|
    t.bigint "almacen_id"
    t.bigint "descuento_id"
    t.bigint "residuo_id"
    t.bigint "producto_id"
    t.string "titulo"
    t.text "descripcion"
    t.text "imagen"
    t.date "fecha_inicio"
    t.date "fecha_fin"
    t.decimal "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["almacen_id"], name: "index_ofertas_on_almacen_id"
    t.index ["descuento_id"], name: "index_ofertas_on_descuento_id"
    t.index ["producto_id"], name: "index_ofertas_on_producto_id"
    t.index ["residuo_id"], name: "index_ofertas_on_residuo_id"
  end

  create_table "productos", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.text "imagen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "residuos", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.text "imagen"
    t.text "tratamiento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "solicitudes", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "oferta_id"
    t.string "titulo"
    t.text "descripcion"
    t.decimal "tipo"
    t.string "direccion"
    t.decimal "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["oferta_id"], name: "index_solicitudes_on_oferta_id"
    t.index ["user_id"], name: "index_solicitudes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "documento"
    t.text "foto"
    t.decimal "rol"
    t.string "direccion"
    t.date "fecha_nacimiento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "almacenes", "users"
  add_foreign_key "beneficios", "entregas"
  add_foreign_key "beneficios", "users"
  add_foreign_key "descuentos", "almacenes"
  add_foreign_key "entregas", "ofertas"
  add_foreign_key "ofertas", "almacenes"
  add_foreign_key "ofertas", "descuentos"
  add_foreign_key "ofertas", "productos"
  add_foreign_key "ofertas", "residuos"
  add_foreign_key "solicitudes", "ofertas"
  add_foreign_key "solicitudes", "users"
end
