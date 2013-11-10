Feature: In order to be able to post peeps
        As a new or existing user of the site
        I need to be able to sign up

        Background: No user logged in
                Given I am on the homepage

        Scenario: Signing up
                When Enrique signs up
                Then I should see "Hi, Enrique!"

        Scenario: Signing up with non-matching passwords
                When Enrique signs up with non-matching passwords
                Then I should not see "Hi, Enrique!"
                And I should see "Your passwords didn't match!"

        Scenario: Signing up with an already taken email address
                When Enrique signs up
                And Nadia signs up with the same email as Enrique
                Then I should see "There is an existing account using this email address."

        Scenario: Signing up with an already taken username
                When Enrique signs up
                And Nadia signs up with the same username as Enrique
                Then I should see "This username is already taken."

        Scenario: Signing in with the correct credentials
                Given Enrique is an existing user
                When Enrique signs in with the correct username and password
                Then I should see "Hi, Enrique!"


        Scenario: Signing in with the incorrect credentials 
                Given Enrique is an existing user
                When Enrique signs in with the incorrect password
                Then I should not see "Hi, Enrique!"
                And I should see "The username or password are incorrect. Please try again."

        Scenario: Enrique signs in and then signs out
                Given Enrique is an existing user
                When Enrique signs in with the correct username and password
                Then Enrique signs out
                Then I should not see "Hi, Enrique!"
                And I should see "Goodbye, hope to peep you soon!"