Feature: Visitor view properties

  Background:
    Given I am on the home page
    And the following property:
      | title       | Awesome Building       |
      | description | this place is the bomb |
      | sale        | true                   |
    And the following property:
      | title       | Awesome lease          |
      | description | this place is the bomb |
      | lease       | true                   |

  Scenario: for sale
    When I follow "Properties for Sale"
    Then I should be on the for sale properties page
    And I should see "Awesome Building"
    And I should see "this place is the bomb"
    And I should not see "Awesome Lease"

  Scenario: for lease
    When I follow "Properties for Lease"
    Then I should be on the for lease properties page
    And I should see "Awesome lease"
    And I should see "this place is the bomb"
    And I should not see "Awesome Building"

  @javascript
  Scenario Outline: filtered by property type
    Given the following property:
      | title         | Good View       |
      | sale          | true            |
      | lease         | true            |
      | property type | <property type> |
    When I am on the <page> properties page
    And I select "<property type>" from "property_type"
    Then I should see "Good View"
    But I should not see "Awesome Building"

  Scenarios:
      | property type | page      |
      | Office        | for sale  |
      | Land          | for lease |
      | Industrial    | for sale  |
