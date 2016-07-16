require 'capybara'
require 'capybara/dsl'
require 'rspec/matchers'
require File.dirname(__FILE__) + '/../lib/amazon_helper'


class ProductListPage


  include AmazonHelper
  include Capybara::DSL
  include RSpec::Matchers


  def verify_page_url
    expcet(page.current_url).to include("field-keywords=")
  end

  def add_Item_to_basket(quantity, size) # method is specific specific for adding PHONE to basket
    page.find('#quantity').select(quantity)
    sleep 2
    page.find("#variation_size_name li[title='Click to select #{size}']").click
    page.find(:button, 'Add to Basket').click
  end


  def verify_search_result(matching_result)    #single used method ... should be reviewed
    click_link(matching_result)
    expect(page.has_content?('Apple iPhone 5S 16GB Unlocked')).to eql true
    item_page_back_button = page.find('#breadcrumb-back-link')
    if item_page_back_button.visible?
      puts "Now in the item result page"
    else
      puts "item page not displayed"
    end
  end




end