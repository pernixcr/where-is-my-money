Feature: Create HighCharts
  As a User 
  I want to see a pie-graph of my expenses by category

  Scenario: User can see a pie-graph
    Given I am on the show graph page
    Then I should see a pie-graph
