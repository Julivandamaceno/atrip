class City < ActiveRecord::Base

	attr_accessible :active, :description, :display_name, :name, :estate, :lat, :long

	belongs_to :estate

	before_save { |obj| obj.name = obj.display_name.to_permalink }

end