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

ActiveRecord::Schema.define(version: 2018_09_03_132701) do

  create_table "enderecos", force: :cascade do |t|
    t.integer "Pessoa_id"
    t.integer "cep"
    t.string "pais"
    t.string "uf"
    t.string "cidade"
    t.string "bairro"
    t.string "rua"
    t.integer "numero"
    t.text "complemento"
    t.string "tipo_moradia"
    t.integer "num_comodos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Pessoa_id"], name: "index_enderecos_on_Pessoa_id"
  end

  create_table "funcionarios", force: :cascade do |t|
    t.integer "Pessoa_id"
    t.integer "num_crefito"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Pessoa_id"], name: "index_funcionarios_on_Pessoa_id"
  end

  create_table "pacientes", force: :cascade do |t|
    t.integer "Pessoa_id"
    t.string "medico_resp"
    t.string "cuidador"
    t.string "grau_esco_cuidador"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Pessoa_id"], name: "index_pacientes_on_Pessoa_id"
  end

  create_table "pessoas", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.date "data_nasc"
    t.string "sexo"
    t.integer "telefone"
    t.string "cor"
    t.string "grau_escolaridade"
    t.string "nome_pai"
    t.string "nome_mae"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "telefones", force: :cascade do |t|
    t.integer "Pessoa_id"
    t.integer "num_tel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Pessoa_id"], name: "index_telefones_on_Pessoa_id"
  end

end
