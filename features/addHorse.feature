Feature: addHorse
  In order to update the herd list
  As an officer
  I want to be able to add a horse to the horses database

	Scenario: Go to New Horse page
  		Given I am on the herd page
          And I am an officer
  		When I click on "Add a New Horse"
        Then I will be on the New Horse page
  
  Scenario: Add new horse
      Given I am on the New Horse page
        And "Horse name" is set to "Brian"
        And "Brand number" is set to "4"
        And "Availability" is set to "true"
      When I click on "Create Horse"
      Then I will see "Brian"
        And I will see "Brand Number: 4"
        And I will see "Available? true"