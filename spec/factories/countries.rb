FactoryGirl.define do

	factory :brasil, :class => Country do
	  name 'brasil'
	  display_name 'Brasil'
	  active true
	  abbreviation 'br'
	  updated_at Date.new
	end

	factory :eua, :class => Country do
	  name 'estados-unidos'
	  display_name 'Estados Unidos'
	  active false
	  abbreviation 'eua'
	  updated_at Date.new
	end

end