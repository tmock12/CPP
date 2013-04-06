Feature: Admin signs in

  Scenario: with valid credentials
    Given the following user:
      | Name                  | Rita              |
      | Email                 | admin@example.com |
      | password              | secret            |
      | password confirmation | secret            |
    When I am on the login page
    And I fill in the following:
      | Email    | admin@example.com |
      | Password | secret            |
    And I press "Sign in"
    Then I should be on the properties page
    And I should see "Welcome Rita"

  Scenario: with invalid credentials
    Given the following user:
      | Name                  | Rita              |
      | Email                 | admin@example.com |
      | password              | secret            |
      | password confirmation | secret            |
    When I am on the login page
    And I fill in the following:
      | Email    | admin@example.com |
      | Password | wrong             |
    And I press "Sign in"
    Then I should be on the admin page
    And I should see "Your email or password are incorrect"
