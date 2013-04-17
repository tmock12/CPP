Feature: Admin deletes property

  Scenario:
    Given the following property:
      | title | Old House |
    When I am signed in as a user
    And I am on the dashboard page
    When I follow "Delete"
    Then I should be on the dashboard page
    And I should not see "Old House"
