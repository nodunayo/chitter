Feature: Viewing peeps when not logged in
        In order to join in the conversation
        As a Chitter user
        I want to see the previously submitted peeps

        Background: The homepage
                Given I am on the homepage

        Scenario: Viewing the peeps
                Given Enrique is an existing user
                And Enrique signs in with the correct username and password
                Then Enrique submits the following peep:
                |body              |created_at  |
                |Is anybody there? |01/01/01    |
                Then Enrique signs out
                When I am on the homepage
                Then I should see "Is anybody there?"
