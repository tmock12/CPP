Feature: Visitor view property

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
    When I am on the for sale properties page
    And I follow "Awesome Building"
    Then I should be on that properties show page
    And I should see the following:
      | Fields                         |
      | Awesome Building               |
      | This building is super awesome |
      | 123 happy lane                 |
      | Atlanta                        |
      | 30328                          |
      | 4 acres                        |
      | $1000 a month                  |
      | GA                             |
      | For Sale                       |
      | Bank Owned                     |
