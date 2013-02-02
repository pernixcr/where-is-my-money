Feature: Manage Profile
  As an user
  I should be able to access my profile page
  And edit my infomation
  And delete my profile

  Background: 
    Given Exists an user with profile:
      | email         | first_name | last_name | company |
      | john@doe.com  | John       | Doe       | Pernix  |

    @javascript
  Scenario: visit my profile page
    Given I am logged in as "john@doe.com"
    And show me the page
    And I am on the home page
    Then I should see "My Profile"
    When I follow "My Profile"
    Then I should be on the profile page of "john@doe.com"
    And I should see the following:
      | First Name: | John    |
      | Last Name:  | Doe     |
      | Company:    | Pernix  |
