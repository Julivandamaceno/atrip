class Country < ActiveRecord::Base

	attr_accessible :abbreviation, :active, :description, :display_name, :name

	before_save { |obj| obj.name = obj.display_name.to_permalink }

	has_many :regions
	has_many :pictures, :as => :imageable

	def uri
		"/#{name}"
	end

end