require 'spec_helper'

describe PlaceController do

	describe "country" do

		it "assigns @country" do
			country = FactoryGirl.build(:brasil)
			Country.should_receive(:find_by_name).with(country.name).and_return(country)
			
      		get :show_country, name: country.name

			assigns(:country).should eq(country)
		end

	end

end