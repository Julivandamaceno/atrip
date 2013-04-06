require 'spec_helper'

describe PlaceController do

	not_found = "nao_encontrado"
	country = FactoryGirl.build(:brasil)
	region = FactoryGirl.build(:sudeste)
	estate = FactoryGirl.build(:sao_paulo)
	city = FactoryGirl.build(:ilha_bela)

	describe "show" do

		params = {}

		[country, region, estate, city].each do |obj|

			method = "show_#{param}".to_sym
			param = obj.class.to_s.underscore.to_sym

			it "assigns place to view" do
				params[param] = obj.name
				obj.class.should_receive(:find_by_name).with(obj.name).and_return(obj)
			
	      		get method, params

				assigns(param).should eq(obj)
			end

			it "render 404 when not found" do
				params[param] = not_found
				obj.class.should_receive(:find_by_name).with(not_found).and_return(nil)

	      		get method, params

				response.response_code.should == 404
				response.should render_template(:file => "#{Rails.root}	/public/404.html")
			end
		end

	end

	describe "country" do

	end

	describe "region" do

	end

	describe "estate" do

	end

	describe "city" do

	end

end