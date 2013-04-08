require 'spec_helper'

describe Region do

	region = FactoryGirl.build(:sudeste)
	country = FactoryGirl.build(:brasil)

	describe "uri" do 

		it "generates correct uri" do
			region.country = country

			region.uri.should == country.uri + "/sudeste"
		end
		
	end

end