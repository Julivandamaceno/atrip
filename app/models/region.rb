class Region < ActiveRecord::Base

	attr_accessible :abbreviation, :active, :description, :display_name, :name

	belongs_to :country

end