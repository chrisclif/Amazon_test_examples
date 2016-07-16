Feature: search for items
  in order to buy available products
  as a user
  i should be able to search for any item

  @search
  Scenario: Add an iPhone5 to the basket
    Given i have searched for an item
    And item is available for purchase
    When i add item to my shopping basket
    Then only expected number of items will be in my basket

  @search
  Scenario Outline: as a user i want to be able to perform a search
    Given that the page have successful loaded the amazon page
    When i search for an "<item_searched>"
    Then the "<item_result>" should  displayed
    Examples:
      | item_searched        | item_result                        |
      | beats solo headphone | results for "beats solo headphone" |
      | lg ultra hd 4k tv    | results for "lg ultra hd 4k tv"    |
      | fitbit surge         | results for "fitbit surge"         |


# Write a scenario to display error message after passing a value (search or sign in)



Scenario: added by jay 2

  # Write two more search test
  # Upload to GIT and inform Jay
  @now
  Scenario Outline: the search bar must be available on screen
    When i am on a "<key_screen>"
    Then the "<search_bar>" must be visible
    Examples:
      | key_screen                                   | search_bar        |
      | amazon.HomePage.coreScreens.home             | verify_search_bar |
      | amazon.HomePage.coreScreens.shopByDepartment | verify_search_bar |

