class PlaceController < ApplicationController

	def show_country
		@country = Country.find_by_name(params[:country])
		http_header_cache(@country)
	end

	def show_region
		@region = Region.find_by_name(params[:region])
		http_header_cache(@region)
	end

	def show_estate
		@estate = Estate.find_by_name(params[:estate])
		http_header_cache(@estate)
	end

	def show_city
		@city = City.find_by_name(params[:city])
		http_header_cache(@city)
	end

	private

	def http_header_cache(obj)
		fresh_when :last_modified => obj.updated_at.utc, :etag => obj
	end

end