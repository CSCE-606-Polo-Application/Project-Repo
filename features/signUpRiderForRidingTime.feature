Feature: signUpRiderForRidingTime
    So that members can sign up for a riding time
    As a member
    I want to create a new riding time pairing me with a horse on a riding schedule

    Background:
    Given a member named "Whitney Walker"
    And a horse named "Fortunata"
    And there is a riding schedule for 6:00pm on April 27

    Scenario: Look at existing riding schedule for 6:00pm on April 27
        Given I am on the Riding Schedule page
        When I click on "April 27 - 06:00 PM"
        Then I will be on the April 27 6:00pm riding schedule page
            And I will see "April 27 - 06:00 PM"
            And I will see "Rider"
            And I will see "Horse"
            And I will see "Sign up"
    
    Scenario: navigate to new riding time page
        Given I am on the April 27 6:00pm riding schedule page
        When I click on "Sign up"
        Then I will be on the new riding time page

    Scenario: Sign up to ride on April 27 at 6:00pm
        Given I am on the April 27 6:00pm new riding time page
            And Rider is set to "Whitney Walker"
            And Horse is set to "Fortunata"
        When I click on "Submit"
        Then I will be on the April 27 6:00pm riding schedule page
            And I will see "Whitney Walker"
            And I will see "Fortunata"

    Scenario: Remove riding time for Whitney Walker
        Given "Whitney Walker" is signed up to ride "Fortunata" on April 27 at 6:00pm
            And I am on the April 27 6:00pm riding schedule page
        When I click on "Remove"
        Then I should not see "Whitney Walker"
            And I should not see "Fortunata"