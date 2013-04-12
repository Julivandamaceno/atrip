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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130412023541) do

  create_table "cities", :force => true do |t|
    t.string   "name",                            :null => false
    t.string   "display_name",                    :null => false
    t.boolean  "active",       :default => false, :null => false
    t.text     "description"
    t.integer  "estate_id",                       :null => false
    t.integer  "lat"
    t.integer  "long"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "cities", ["name", "estate_id"], :name => "index_cities_on_name_and_estate_id", :unique => true

  create_table "countries", :force => true do |t|
    t.string   "name",                                         :null => false
    t.string   "display_name",                                 :null => false
    t.boolean  "active",                    :default => false, :null => false
    t.string   "abbreviation", :limit => 2,                    :null => false
    t.text     "description"
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

  add_index "countries", ["name"], :name => "index_countries_on_name", :unique => true

  create_table "estates", :force => true do |t|
    t.string   "name",                                         :null => false
    t.string   "display_name",                                 :null => false
    t.boolean  "active",                    :default => false, :null => false
    t.string   "abbreviation", :limit => 2,                    :null => false
    t.text     "description"
    t.integer  "region_id",                                    :null => false
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

  add_index "estates", ["name"], :name => "index_estates_on_name", :unique => true

  create_table "pictures", :force => true do |t|
    t.string   "name"
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "regions", :force => true do |t|
    t.string   "name",                                         :null => false
    t.string   "display_name",                                 :null => false
    t.boolean  "active",                    :default => false, :null => false
    t.string   "abbreviation", :limit => 2,                    :null => false
    t.text     "description"
    t.integer  "country_id",                                   :null => false
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

  add_index "regions", ["name"], :name => "index_regions_on_name", :unique => true

end
