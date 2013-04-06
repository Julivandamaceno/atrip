# encoding: utf-8
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

	factory :sudeste, :class => Region do
	  name 'sudeste'
	  display_name 'Sudeste'
	  active true
	  abbreviation 'se'
	  updated_at Date.new
	end

	factory :sao_paulo, :class => Estate do
	  name 'sao_paulo'
	  display_name 'São Paulo'
	  active true
	  abbreviation 'sp'
	  updated_at Date.new
	end

	factory :ilha_bela, :class => City do
	  name 'ilha_bela'
	  display_name 'Ilha Bela'
	  active true
	  updated_at Date.new
	end

end