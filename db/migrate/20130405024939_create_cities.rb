# encoding: utf-8
class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
	  t.string :name, :null => false
      t.string :display_name, :null => false
      t.boolean :active, :null => false, :default => false
      t.string :description
      t.references :estate, :null => false
      t.integer :lat
      t.integer :long

      t.timestamps
    end
    add_index :cities, [:name, :estate_id], :unique => true

	City.new(display_name:"Ilha Bela", active:true, estate:Estate.find_by_abbreviation('sp')).save
    City.new(display_name:"São Paulo", active:true, estate:Estate.find_by_abbreviation('sp')).save
    City.new(display_name:"Angra dos Reis", active:true, estate:Estate.find_by_abbreviation('rj')).save
  end
end
