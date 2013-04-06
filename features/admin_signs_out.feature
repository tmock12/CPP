Feature: Admin signs out

  Scenario:
    Given I am signed in as a user
    When I follow "sign out"
    Then I should be on the home page
    And I should see "You are now signed out"

    When I am on the dashboard page
    Then I should be on the admin page
