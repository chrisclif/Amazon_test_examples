Feature: Navigate around the Amazon application
  in order to figure out what the amazon application has to offer
  i want to see key pages and their content

  @navigate
  Scenario: verify some elements on the home page
    Given that i am on the Amazon website
    When i observe the home page closely
    Then some elements should be visible on the screen

  @navigate
  Scenario Outline: select top navigation links
    Given I am on the Amazon home page
    When I select the top navigation link "<nav_link>"
    Then I should be navigated to correct page "<page_name>"
    And the url should be correct "<partial_url>"
    Examples:
      | nav_link          | page_name  | partial_url |
      | Your Amazon.co.uk | Sign in    | signin      |
      | Today's Deals     | Deals      | deals       |
      | Gift Cards        | Gift Cards | Giftcards   |

  @navigate
  Scenario Outline: Moving from one section to another as required
    Given i am on the "Shop by Depatment" page
    When i select "<section_name>" from the main page
    Then i should see the "<on_screen>"
    And i can return to the "Shop by Department" page
    Examples:
      | section_name    | on_screen       |
      | Software        | Software        |
      | Games           | Games           |
      | All Electronics | The Electronics |

  @navigate
  Scenario Outline: extensively check Shop by Department screen and content
    Given i am on the shop by Department screen
    When i can confirm this by observing a few items
    Then i can see all "<screen_items>" available
    Examples:
      | screen_items                 |
      | Electronics & Computers      |
      | Business, Industry & Science |
      | Books & Audible              |
      | Appstore for Android         |
      | Kindle E-readers & Books     |
      | Car & Motorbike              |
