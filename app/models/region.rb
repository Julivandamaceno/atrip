class Region < ActiveRecord::Base

	attr_accessible :abbreviation, :active, :description, :display_name, :name, :country

	belongs_to :country
	has_many :pictures, :as => :imageable

	before_save { |obj| obj.name = obj.display_name.to_permalink }

	def uri
		country.uri + "/#{name}"
	end

end