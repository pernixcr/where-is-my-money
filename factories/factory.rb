require 'factory_girl'

FactoryGirl.define do
	factory :category do 
		sequence(:name) { |cat| "Category #{cat}"}
	end
end