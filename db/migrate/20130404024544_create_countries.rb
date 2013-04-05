class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name, :null => false
      t.string :display_name, :null => false
      t.boolean :active, :null => false, :default => false
      t.string :abbreviation, :null => false, :limit => 2
      t.string :description

      t.timestamps
    end
    add_index :countries, :name, :unique => true
    
    Country.new(display_name:"Brasil", active:true, abbreviation:"br").save
  end
end
