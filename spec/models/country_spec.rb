require 'spec_helper'

describe Country do

	country = FactoryGirl.build(:brasil)

	describe "uri" do 
		
		it "generates correct uri" do
			country.uri.should == "/brasil"
		end

	end

end