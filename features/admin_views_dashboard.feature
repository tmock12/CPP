Feature: Admin views dashboard
  Scenario:
    Given the following property:
      | Title       | Awesome Building               |
    And that property has the following contact:
      | name | Head Honcho |
    When I am signed in as a user
    And I am on the dashboard page
    Then I should see "Awesome Building"
    And I should see "Head Honcho"
