Feature: Homepage
  In order to read the page
  As a viewer
  I want to see the home page of my app

	Scenario: View welcome page
  		Given I am on the home page
  		Then I should see "Welcome to the TAMU Polo Club"

    Scenario: View welcome page
  		Given I am on the home page
  		Then I should not see "Welcome to the TAMU Chess Club"