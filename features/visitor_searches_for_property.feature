Feature: Visitor searches for property
  @javascript
  Scenario: filtered by search
    Given the following property:
      | title         | Good View       |
      | sale          | true            |
      | lease         | true            |
      | submarket     | I-20 East       |
    And the following property:
      | title     | Not Nice  |
      | sale      | true      |
      | lease     | true      |
      | submarket | I-20 East |
    When I am on the for sale properties page
    And I press "Show Search Options"
    And I fill in "title" with "Good"
    And I press "Filter Properties"
    Then I should see "Good View"
    But I should not see "Not Nice"
