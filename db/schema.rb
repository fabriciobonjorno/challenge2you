# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_03_16_170503) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "catalogs", force: :cascade do |t|
    t.string "show_id"
    t.string "genre"
    t.string "title"
    t.string "director"
    t.string "cast"
    t.string "country"
    t.date "date_added"
    t.integer "release_year"
    t.string "rating"
    t.string "duration"
    t.string "listed_in"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cast"], name: "index_catalogs_on_cast"
    t.index ["country"], name: "index_catalogs_on_country"
    t.index ["date_added"], name: "index_catalogs_on_date_added"
    t.index ["description"], name: "index_catalogs_on_description"
    t.index ["director"], name: "index_catalogs_on_director"
    t.index ["duration"], name: "index_catalogs_on_duration"
    t.index ["genre"], name: "index_catalogs_on_genre"
    t.index ["listed_in"], name: "index_catalogs_on_listed_in"
    t.index ["rating"], name: "index_catalogs_on_rating"
    t.index ["release_year"], name: "index_catalogs_on_release_year"
    t.index ["show_id"], name: "index_catalogs_on_show_id"
    t.index ["title"], name: "index_catalogs_on_title"
  end

end
