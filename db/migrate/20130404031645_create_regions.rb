# encoding: utf-8
class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :name, :null => false, :unique => true
      t.string :display_name, :null => false
      t.boolean :active, :null => false, :default => false
      t.string :abbreviation, :null => false, :limit => 2
      t.text :description
      t.references :country, :null => false

      t.timestamps
    end
    add_index :regions, :name, :unique => true

    Region.new(display_name:"Norte", active:true, abbreviation:"n", country:Country.find_by_abbreviation('br')).save
    Region.new(display_name:"Nordeste", active:true, abbreviation:"ne", country:Country.find_by_abbreviation('br')).save
    Region.new(display_name:"Sul", active:true, abbreviation:"s", country:Country.find_by_abbreviation('br')).save
    Region.new(display_name:"Sudeste", active:true, abbreviation:"se", country:Country.find_by_abbreviation('br')).save
    Region.new(display_name:"Centro-Oeste", active:true, abbreviation:"co", country:Country.find_by_abbreviation('br')).save
  end
end
