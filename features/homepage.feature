Feature: Hompage structure
        In order to use the chitter app
        As a visitor of the website
        I need a user interface


        Background: The main page
                Given I am on the homepage

        Scenario: The title
                Then I should see "Chitter"

        Scenario: Sign up and Sign in
                Then I should see "Sign up"
                And I should see "Sign in"

        Scenario: Adding peeps
                Then I should see "Peep"

