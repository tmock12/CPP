Feature: Admin edits property
  Scenario:
    Given the following property:
      | Title       | Awesome Building               |
      | Description | This building is super awesome |
      | Street 1    | 123 happy lane                 |
      | City        | Atlanta                        |
      | Zip         | 30328                          |
      | Size        | 4 acres                        |
      | Price       | $1000 a month                  |
      | State       | GA                             |
      | Sale        | true                           |
      | Lease       | false                          |
      | Bank Owned  | true                           |
    And that property has the following contact:
      | name | Head Honcho |
    When I am signed in as a user
    And I am on the dashboard page
    And I follow "Edit" within the properties section
    And I fill in the following:
      | Title       | Good Building                |
      | Address     | 100 good street              |
      | City        | Atlanta                      |
      | Zip Code    | 30328                        |
      | Size        | 3 acres                      |
    When I press "Update Property"
    Then I should see the following:
      | Good Building                |
      | 100 good street              |
      | Atlanta                      |
      | 30328                        |
      | 3 acres                      |
      | $1000 a month                |
