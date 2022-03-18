Feature: Go to contact page
    So site visitors can find contact information for the club officers

    Scenario: Clicking on "Contact Us" takes user to contact info page from home page
        Given I am on the home page
        When I click on "Contact Us"
        Then I will arrive on the contact page
