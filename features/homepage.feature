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

        Scenario: No peeping when not logged in
                Then I should not see "Peep"

        Scenario: Peep when signed in
                Given Enrique is an existing user
                When Enrique signs in with the correct username and password
                Then I should see "Peep"
