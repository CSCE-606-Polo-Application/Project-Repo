Feature: addRidingTime
  So that new riding times can be created
  As an officer
  I want to be able to create a new riding event

  Scenario: Go to Riding Times page
  		Given I am on the home page
  		When I click on "Riding Times"
        Then I will be on the Riding Times page

  Scenario: Create a new riding time
        Given I am on the Riding Times page
         And I am an officer
        When I click on "Add a New Riding Time"
        Then I will be on the New Riding Time page