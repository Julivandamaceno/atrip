require 'spec_helper'

describe PlaceController do

	country = FactoryGirl.build(:brasil)
	region = FactoryGirl.build(:sudeste)
	estate = FactoryGirl.build(:sao_paulo)
	city = FactoryGirl.build(:ilha_bela)

	describe "country" do

		it "assigns @country" do
			Country.should_receive(:find_by_name).with(country.name).and_return(country)
			
      		get :show_country, country: country.name

			assigns(:country).should eq(country)
		end

	end

	describe "region" do

		it "assigns @region" do
			Region.should_receive(:find_by_name).with(region.name).and_return(region)
			
      		get :show_region, country: country.name, region: region.name

			assigns(:region).should eq(region)
		end

	end

	describe "estate" do

		it "assigns @estate" do
			Estate.should_receive(:find_by_name).with(estate.name).and_return(estate)
			
      		get :show_estate, country: country.name, region: region.name, estate: estate.name

			assigns(:estate).should eq(estate)
		end

	end

	describe "city" do

		it "assigns @city" do
			City.should_receive(:find_by_name).with(city.name).and_return(city)
			
      		get :show_city, country: country.name, region: region.name, estate: estate.name, city: city.name

			assigns(:city).should eq(city)
		end

	end

end