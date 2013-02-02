Given /^exists (\d+) categories$/ do |amount_categories|
	amount_categories.to_i.times do
		FactoryGirl.create :category
	end
end

Then /^I should see the list of categories$/ do
  categories = Category.all
  categories.each do |category|
  	step %{I should see "#{category.name}"}
  end
end
