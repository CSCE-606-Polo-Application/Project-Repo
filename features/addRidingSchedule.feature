Feature: addRidingSchedule
  So that members can sign up for different riding events
  As an officer
  I want to be able to create a new riding schedule

  Scenario: Go to Riding Schedule page
  		Given I am on the home page
  		When I click on "Schedule"
        Then I will be on the Riding Schedule page

  Scenario: Navigate to New Riding Schedule page
        Given I am on the Riding Schedule page
         And I am an officer
        When I click on "Add a New Riding Schedule"
        Then I will be on the New Riding Schedule page

  Scenario: Create a New Riding Schedule for next wednesday at 6:00 pm
        Given I am on the New Riding Schedule page
            And the schedule date is set for next Wednesday
            And the schedule time is set for "6:00 pm"
        When I click on "Create Riding schedule"
        Then I will be on the Riding Schedule page
            And I will see a schedule for next Wednesday at "6:00 pm"

  Scenario: Delete a Riding Schedule
      Given there is a riding schedule for 6:00pm on April 27
            And I am on the Riding Schedule page
      When I click on "Delete"
      Then I should not see "April 27 - 6:00pm"
        