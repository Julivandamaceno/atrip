class Estate < ActiveRecord::Base

	attr_accessible :abbreviation, :active, :description, :display_name, :name, :region

	belongs_to :region

	before_save { |obj| obj.name = obj.display_name.to_permalink }

	def uri
		region.uri + "/#{name}"
	end

end