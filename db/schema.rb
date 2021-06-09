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

ActiveRecord::Schema.define(version: 2021_06_09_143846) do

  create_table "bioterios", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "local"
    t.string "unidade"
    t.string "idcuica"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nivelsanitario"
    t.boolean "mta"
    t.string "responsavel"
    t.string "telcontato"
    t.string "emailcontato"
  end

  create_table "fenotipos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fundos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genealvos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nomeoficial"
    t.string "simbolo"
    t.string "sitereferencia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genesecundarios", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "genealvo_id"
    t.bigint "geneassociado_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genealvo_id"], name: "index_genesecundarios_on_genealvo_id"
    t.index ["geneassociado_id"], name: "index_genesecundarios_on_geneassociado_id"
  end

  create_table "genotipos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "linfundorepositorios", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "repositorio_id"
    t.bigint "linhagem_id"
    t.bigint "fundo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fundo_id"], name: "index_linfundorepositorios_on_fundo_id"
    t.index ["linhagem_id"], name: "index_linfundorepositorios_on_linhagem_id"
    t.index ["repositorio_id"], name: "index_linfundorepositorios_on_repositorio_id"
  end

  create_table "linhagems", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "origems", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "instituicao"
    t.string "sigla"
    t.string "endereco"
    t.string "observacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "primerdorepositorios", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "repositorio_id"
    t.bigint "primer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["primer_id"], name: "index_primerdorepositorios_on_primer_id"
    t.index ["repositorio_id"], name: "index_primerdorepositorios_on_repositorio_id"
  end

  create_table "primers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "descricao"
    t.string "protocolopcr"
    t.string "geldeacarose"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "repositorios", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "anoiniciocolonia"
    t.string "metodoacasalamento"
    t.string "linkrefconstr"
    t.string "nivelseguranca"
    t.string "cqb"
    t.bigint "genotipo_id"
    t.bigint "bioterio_id"
    t.bigint "origem_id"
    t.bigint "fenotipo_id"
    t.bigint "genealvo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bioterio_id"], name: "index_repositorios_on_bioterio_id"
    t.index ["fenotipo_id"], name: "index_repositorios_on_fenotipo_id"
    t.index ["genealvo_id"], name: "index_repositorios_on_genealvo_id"
    t.index ["genotipo_id"], name: "index_repositorios_on_genotipo_id"
    t.index ["origem_id"], name: "index_repositorios_on_origem_id"
  end

  create_table "tipo_vinculos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "tipoVinculo"
    t.string "codigoSetor"
    t.string "nomeAbreviadSetor"
    t.string "nomeSetor"
    t.string "codigoUnidade"
    t.string "siglaUnidade"
    t.string "nomeUnidade"
    t.string "nomeVinculo"
    t.string "nomeAbreviadoFuncao"
    t.bigint "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "index_tipo_vinculos_on_usuario_id"
  end

  create_table "usuarios", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nomeUsuario"
    t.string "loginUsuario"
    t.string "tipoUsuario"
    t.string "emailPrincipalUsuario"
    t.string "emailAlternativoUsuario"
    t.string "emailUspUsuario"
    t.string "numeroTelefoneFormatado"
    t.string "ramalUsp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "genesecundarios", "genealvos"
  add_foreign_key "genesecundarios", "genealvos", column: "geneassociado_id"
  add_foreign_key "linfundorepositorios", "fundos"
  add_foreign_key "linfundorepositorios", "linhagems"
  add_foreign_key "linfundorepositorios", "repositorios"
  add_foreign_key "primerdorepositorios", "primers"
  add_foreign_key "primerdorepositorios", "repositorios"
  add_foreign_key "repositorios", "bioterios"
  add_foreign_key "repositorios", "fenotipos"
  add_foreign_key "repositorios", "genealvos"
  add_foreign_key "repositorios", "genotipos"
  add_foreign_key "repositorios", "origems"
  add_foreign_key "tipo_vinculos", "usuarios"
end
