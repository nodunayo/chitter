Feature: Adding peeps
        In order to make my voice heard
        As a Chitter user
        I want to submit peeps to the homepage

        Background: No user logged in
                Given I am on the homepage

        Scenario: Submitting a new peep whilst logged in
                Given Enrique is an existing user
                And Enrique signs in with the correct username and password
                Then Enrique submits the following peep:
                |body                |
                |I am a master coder!|
                Then I should see "I am a master coder!"
                And I should see "ecomba"
                And I should see "Enrique Comba Riepenhausen"