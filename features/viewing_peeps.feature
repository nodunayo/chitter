Feature: Viewing peeps
  In order to join in the conversation
  As a Chitter user
  I want to see the previously submitted peeps

  Scenario: Viewing the peeps
    Given the following peeps have been submitted:
      | body              | created_at  |
      | Is anybody there? | 01/01/01   |
    When I am on the homepage
    Then I should see "Is anybody there?"
