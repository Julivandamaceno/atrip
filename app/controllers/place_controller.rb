class PlaceController < ApplicationController

	def show_country
		@country = Country.find_by_name(params[:name])
	end

end