class PlaceController < ApplicationController

	def show_country
		@country = Country.find_by_name(params[:country])
		respond_using(@country)
	end

	def show_region
		@region = Region.find_by_name(params[:region])
		respond_using(@region)
	end

	def show_estate
		@estate = Estate.find_by_name(params[:estate])
		respond_using(@estate)
	end

	def show_city
		@city = City.find_by_name(params[:city])
		respond_using(@city)
	end

	private

	def respond_using(obj)
		if obj
			fresh_when :last_modified => obj.updated_at.utc, :etag => obj
			if obj.uri != request.fullpath
				return redirect_to obj.uri, status: 301
			end
		else
			render(file: "#{Rails.root}/public/404", status: 404, formats: [:html])
		end
	end

end