Feature: Admin creates contact
  Scenario:
    Given I am signed in as a user
    And I am on the dashboard page
    When I follow "Add new contact"
    And I fill in the following:
      | Name     | Mike McAwesome   |
      | Cell     | 123 867 5309     |
      | Email    | mike@example.com |
    When I press "Add Contact"
    Then I should be on the dashboard page
    And I should see "Mike McAwesome"
