require 'spec_helper'

describe Estate do

	country = FactoryGirl.build(:brasil)
	region = FactoryGirl.build(:sudeste)
	estate = FactoryGirl.build(:sao_paulo)

	describe "uri" do 

		it "generates correct uri" do
			region.country = country
			estate.region = region

			estate.uri.should == region.uri + "/sao_paulo"
		end

	end

end
