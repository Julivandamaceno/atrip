class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :name, :null => false
      t.string :display_name, :null => false
      t.boolean :active, :default => false
      t.string :abbreviation, :null => false, :limit => 2
      t.string :description
      t.references :country

      t.timestamps
    end
  end
end
