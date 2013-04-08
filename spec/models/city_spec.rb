require 'spec_helper'

describe City do

	country = FactoryGirl.build(:brasil)
	region = FactoryGirl.build(:sudeste)
	estate = FactoryGirl.build(:sao_paulo)
	city = FactoryGirl.build(:ilha_bela)

	describe "uri" do 

		it "generates correct uri" do
			region.country = country
			estate.region = region
			city.estate = estate

			city.uri.should == estate.uri + "/ilha_bela"
		end

	end

end
