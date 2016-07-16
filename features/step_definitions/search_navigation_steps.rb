# search steps
Given(/^i have searched for an item$/) do
  from_homePage
  searchFor('iPhone5')
end

And(/^item is available for purchase$/) do
  amazon.plp.verify_search_result('Apple iPhone 5S 16GB Unlocked (Space Grey)')
end

When(/^i add item to my shopping basket$/) do
  amazon.plp.add_Item_to_basket(3, '64GB')
end

Then(/^only expected number of items will be in my basket$/) do
  itemsAddedToBasket(3)
end

# steps for scenario outline
Given(/^that the page have successful loaded the amazon page$/) do
  from_homePage
end

When(/^i search for an "([^"]*)"$/) do |item_searched|
  searchFor(item_searched)
end

Then(/^the "([^"]*)"beats solo headphone"([^"]*)" should  displayed$/) do |text_returned, arg2|
  results_returned(text_returned)
end

Then(/^the "([^"]*)"lg ultra hd (\d+)k tv"([^"]*)" should  displayed$/) do |text_returned, arg2, arg3|
  results_returned(text_returned)
end

Then(/^the "([^"]*)"fitbit surge"([^"]*)" should  displayed$/) do |text_returned, arg2|
  results_returned(text_returned)
end


# Page Nav. test 1
Given(/^that i am on the Amazon website$/) do
  amazon.home_page.load_page
end

When(/^i observe the home page closely$/) do
  amazon.home_page.verify_page_url
end

Then(/^some elements should be visible on the screen$/) do
  amazon.home_page.verify_page
  amazon.home_page.verify_carousel
end


# Navigate TopNav Links
Given(/^I am on the Amazon home page$/) do
  from_homePage
end

When(/^I select the top navigation link "([^"]*)"$/) do |link_name|
  all_elements = page.all("#nav-xshop a")
  all_elements.find { |x| x.text==link_name }.click
end

Then(/^I should be navigated to correct page "([^"]*)"$/) do |page_title|
  expect(page).to have_content(page_title)
end

And(/^the url should be correct "([^"]*)"$/) do |expected_url|
  expect(page.current_url).to include expected_url
end


# Navigate shop by departments screen
Given(/^i am on the "([^"]*)" page$/) do |arg1|
  from_homePage
end

When(/^i select "([^"]*)" from the main page$/) do |section_name|
  amazon.shop_byDepartment.dpage
  click_link(section_name)
end

Then(/^i should see the "([^"]*)"$/) do |on_screen|
  amazon.shop_byDepartment.verify_text(on_screen)
end

Then(/^i can return to the "([^"]*)" page$/) do |arg1|
  amazon.shop_byDepartment.dpage
end


# Extensively checking the shop by department screen
Given(/^i am on the shop by Department screen$/) do
  from_homePage
  amazon.shop_byDepartment.dpage
end

When(/^i can confirm this by observing a few items$/) do
  amazon.shop_byDepartment.page_url
end

Then(/^i can see all "([^"]*)" available$/) do |screen_items|
  amazon.shop_byDepartment.verify_text(screen_items)
end

