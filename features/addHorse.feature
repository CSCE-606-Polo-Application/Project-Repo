Feature: addHorse
  In order to update the herd list
  As an officer
  I want to be able to add a horse to the horses database

	Scenario: Add a Horse
  		Given I am on the herd page
          And I am an officer
  		When I click on "Add a Horse"
        Then I will be on the New Horse page