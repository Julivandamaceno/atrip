require 'spec_helper'

describe PlaceController do

	not_found = "nao_encontrado"
	country = FactoryGirl.build(:brasil)
	region = FactoryGirl.build(:sudeste)
	estate = FactoryGirl.build(:sao_paulo)
	city = FactoryGirl.build(:ilha_bela)

	region.country = country
	estate.region = region
	city.estate = estate

	describe "show" do

		params = {}

		[country, region, estate, city].each do |place|

			param = place.class.to_s.underscore.to_sym
			method = "show_#{param}".to_sym

			describe param do

				it "assigns place to view" do
					params[param] = place.name
					place.class.should_receive(:find_by_name).with(place.name).and_return(place)
				
		      		get method, params

					assigns(param).should eq(place)
				end

				it "render 404 when not found" do
					params[param] = not_found
					place.class.should_receive(:find_by_name).with(not_found).and_return(nil)

		      		get method, params

					response.response_code.should == 404
					response.should render_template(:file => "#{Rails.root}	/public/404.html")
				end

				it "redirects when uri is wrong" do
					params[param] = place.name

					if param != :country
						place.class.should_receive(:find_by_name).with(place.name).and_return(place)
						controller.request.stub!(:fullpath).and_return("/wrong_uri")
					
			      		get method, params

			      		response.response_code.should == 301
			      		response.should redirect_to place.uri
			      	end
				end

			end

		end

	end

end