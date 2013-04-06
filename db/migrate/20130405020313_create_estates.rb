# encoding: utf-8
class CreateEstates < ActiveRecord::Migration
  def change
    create_table :estates do |t|
      t.string :name, :null => false
      t.string :display_name, :null => false
      t.boolean :active, :null => false, :default => false
      t.string :abbreviation, :null => false, :limit => 2
      t.text :description
      t.references :region, :null => false

      t.timestamps
    end
    add_index :estates, :name, :unique => true

    Estate.new(display_name:"São Paulo", active:true, abbreviation:"sp", region:Region.find_by_abbreviation('se')).save
    Estate.new(display_name:"Rio de Janeiro", active:true, abbreviation:"rj", region:Region.find_by_abbreviation('se')).save
  end
end
