Feature: Admin creates property

  Scenario:
    Given the following contacts:
      | name          |
      | Mike the Man  |
      | Ted McAwesome |
    Given I am signed in as a user
    And I am on the dashboard page
    When I follow "Add new property"
    And I fill in the following:
      | Title       | Awesome Building               |
      | Description | This building is super awesome |
      | Address     | 123 happy lane                 |
      | City        | Atlanta                        |
      | Zip Code    | 30328                          |
      | Size        | 4 acres                        |
      | Price       | $1000 a month                  |
    And I select "Georgia" from "State"
    And I select "Office" from "Property type"
    And I check "Mike the Man"
    And I check "Ted McAwesome"
    And I check "Lease"
    And I check "Bank owned?"
    And I attach the file at "features/support/test-image.jpg" to "Attached image"
    When I press "Add Property"
    Then I should be on that properties show page
    And I should see the image "test-image.jpg"
