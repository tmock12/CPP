Feature: Admin edits contact
  Scenario:
    Given the following contact:
      | Name     | Mike McAwesome   |
      | Cell     | 123 867 5309     |
      | Email    | mike@example.com |
    When I am signed in as a user
    And I am on the dashboard page
    And I follow "Edit"
    And I fill in the following:
      | Name  | Mike McSweet        |
    When I press "Update Contact"
    Then I should see "Mike McSweet"
    But I should not see "Mike McAwesome"
