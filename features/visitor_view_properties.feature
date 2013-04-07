Feature: Visitor view properties

  Scenario: for sale
    Given I am on the home page
    And the following property:
      | title        | Awesome Building       |
      | description  | this place is the bomb |
      | listing type | For Sale               |
    When I follow "Properties for sale"
    Then I should be on the for sale properties page
    And I should see "Awesome Building"
    And I should see "this place is the bomb"

  Scenario: for lease
    Given I am on the home page
    And the following property:
      | title        | Awesome lease          |
      | description  | this place is the bomb |
      | listing type | Lease                  |
    When I follow "Properties for lease"
    Then I should be on the for lease properties page
    And I should see "Awesome lease"
    And I should see "this place is the bomb"
