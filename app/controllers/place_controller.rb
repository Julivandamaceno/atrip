class PlaceController < ApplicationController

	def show_country
		@country = Country.find_by_name(params[:name])
		fresh_when :last_modified => @country.updated_at.utc, :etag => @country
	end

end