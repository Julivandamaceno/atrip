require 'spec_helper'

describe Region do

	region = FactoryGirl.build(:sudeste)
	country = FactoryGirl.build(:brasil)

	describe "uri" do 
		region.country = country

		region.uri.should == "/brasil/sudeste"
	end

end
