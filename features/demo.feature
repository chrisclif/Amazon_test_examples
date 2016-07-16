
Feature: Sample Demo

  this is sample demo

  Background:
    Given I am on the amazon home page

  Scenario: Sample scenario 1
    When I search for an item "ipad"
    Then I should see the item "iapd" in the search results


  Scenario Outline: demo outline one
    And I navigate to the login page
    When I provide login credentials username "<user_name>" password "<password>"
    When I provide login credentials username "asdffasdfa sfdsadfgasdfa" password "<password>"
    Then I should see the message "<error_message>"
  Examples:
    | user_name | password | error_message    |
    | jay1      | xyz      | invalid username |
    | jay2      | xyz      | invalid username |


  Scenario Outline: demo outline one
    And I navigate to the login page
    When I provide login credentials username <user_name> password <password>
    When I provide login credentials username fffasdfasfasdfasdf asdfas asdf asdfasd password <password>
    When I provide login credentials username as abcd and password as asdfasdfadsf

    Then I should see the message <error_message>
  Examples:
    | user_name | password | error_message    |
    | jay1      | xyz      | invalid username |
    | jay2      | xyzd     | invalid password |


  Scenario: demo table one
    And I navigate to the login page
    Then I should see the error message for incorrect credentials
      | user_name | password | error_message    |
      | jay1      | xyz      | invalid username |
      | jay2      | xyzd     | invalid password |


  Scenario Outline: table and outline
    And I navigate to the "<page_name>" page
    Then I should see the following elements on "<page_name>"
      | element_name |
      | user_name    |
      | password     |
  Examples:
    | page_name    |
    | login        |
    | registration |


  Scenario Outline: click button name on page
    When I select a button <button_name> on a page <page>
    Then I should see the message "<error_message>"
  Examples:
    | button_name | page | error_message |
    | jay1        | xyz  | ddd           |
    | jay2        | xyzd | ggg           |


  Scenario: demo 3
    When I select a button named login on a page called login
    Then I should see the message "as invalid login"


  Scenario: numbers
    Given I am on the home page
    When I search for "ipad"
    Then I should see 20 results on the 1st page

    # predefined parameters withihn the step definition and to pass value in the scenario to match the condition
  Scenario: parameters within the step def
    Given I am on the amazon website
    Given I am on the tesco website
    Given I am on the john lewis website
    Given I am on the sainsbury website

    Given I select the delivery method as delivery

    Then I should see the value
    Then I should not see the value

    Then I should see 1 item
    Then I should see 10 items
    Then I navigate to "login" page


  Scenario: call steps within other steps
  Given I am on the amazon search results for "ipad"


  # EXAMPLE STEPS CALLING below

# Then(/^I should see the error message for incorrect credentials$/) do |table|
#   table.hashes.each do |row|
#     p row['user_name']
#     p row['password']
#     p row['error_message']
#   end
# end
#
# # calling steps within the steps
#
# Given(/^I am on the amazon search results for "([^"]*)"$/) do |search_term|
#   #combined steps calling
#   step "I am on the amazon website"
#   step "I search for an item '#{search_term}'"
#   #combined steps calling
#   steps %Q{
#       * I am on the amazon website
#       * I search for an item "#{search_term}"
#       }
# end



                                        # THINGS TO DO   ===>>

  # cucumber expressions
  # http://agileforall.com/wp-content/uploads/2011/08/Cucumber-Regular-Expressions-Cheat-Sheet.pdf
  # How to use http://rubular.com/
  # => Shop By Department Hovering
  # GIT

  # Write test scenario using arrays [add product]
  # attempt Scenario outline: to verify that 5 links are present in amazon.co.uk home page
  # More tests to identify items on AMAZON.CO.UK using CSS classes and HTML basics
  # Table within steps   -- automate an example scenario
  # attempt page object using ruby class
  # install windows (Ruby, cucumber, Capybara, rspec)  => try running tests with chrome driver
  # Read and understand the Capybara DSL  

  # Siteprism

                                     #  QUESTIONS ==>
  #   Explain require_relative and include
  #   Module, where do we use modul and why, How does module relate with Classes
  #   How do you set up branch for automation test scripts in CI ? same branch as dev or different and why ?
  #   Other Questions around CI and Version control ?
  #   Any Rubymine tricks and cheats ?
  #   Major Ruby keywords e.g Super often used in your code and relevance
  #   Top 10 code syntaxes and you often use while scripting. e.g methods, classes, hashes or arrays etc.?
  #   What version control do you use do you use Git ? can we review this ?


#  NEXT WEEK ASSIGNMENT
#    = create a puplic repo (register git)GIT
#    = write more classes and methods for the amazon project
#    =

  #Having problems finding items using [css Class, href, Link Text]
# Also struggling to find text on a page (exact match or contains...)
# after finding items i also struggle to verify them being true or not. then do something with the result
# e.g if it is true do this, if it is not true do this

  # added by jay for dem