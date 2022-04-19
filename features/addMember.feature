Feature: addMember
  In order to add a new member to the club
  As an officer
  I want to be able to add a member to the members database

  Scenario: Go to New Member page
    Given I am on the members page
        And I am an officer
    When I click on "Add a New Member"
    Then I will be on the New Member page

  Scenario: Add new member
    Given I am on the New Member page
    And "UIN" is set to "00000009"
    And "First Name" is set to "Brian"
    And "Last Name" is set to "Billings"
    And "Phone Number" is set to "(979) 111-1111"
    And "Email Address" is set to "bbillings@tamu.edu"
    When I click on "Create Member"
    Then I will see "00000009"
    And I will see "Brian"
    And I will see "Billings"
    And I will see "(979) 111-1111"
    And I will see "bbillings@tamu.edu"