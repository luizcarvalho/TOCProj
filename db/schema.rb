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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120124195256) do

  create_table "ads", :force => true do |t|
    t.string   "nome"
    t.string   "imagem"
    t.string   "url",        :default => "http://"
    t.integer  "tipo",       :default => 0
    t.integer  "visitas",    :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "configurations", :force => true do |t|
    t.string   "tipo"
    t.string   "label"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", :force => true do |t|
    t.string   "titulo"
    t.text     "texto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", :force => true do |t|
    t.string   "titulo"
    t.text     "texto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "senha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
