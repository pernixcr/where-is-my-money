Feature: User can manage categories
	In order to customize the expenses
	As an user
	I want to manage the categories

	Background:
		Given exists 5 categories

	Scenario: User visits categories index page
		Given I am on the home page
		When I go to the categories page
		Then I should see the list of categories

	Scenario: User creates a new category
		Given I am on the categories page
		When I follow "New Category"
		Then I should see "New Category"
		When I fill in "Name" with "Category name"
		And I press "Save"
		Then I should be on the categories page
		And I should see "Category name"

	Scenario: User updates a category
		Given I am on the categories page
		When I follow "edit_1"
		Then I should see "Edit Category"
		When I fill in "Name" with "Category name updated"
		And I press "Save"
		Then I should be on the categories page
		And I should see "Category name updated"

	Scenario: User deletes a category
		Given I am on the categories page
		And I should see "Category 16"
		When I follow "delete_1"
		Then I should be on the categories page
		And I should not see "Category 16"
