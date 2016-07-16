require 'capybara'
require 'capybara/dsl'
require 'rspec/matchers'
require File.dirname(__FILE__) + '/../lib/amazon_helper'


class ShopByDepartment

  include AmazonHelper
  include Capybara::DSL
  include RSpec::Matchers


  @@SBDpage_url = "https://www.amazon.co.uk/gp/site-directory/ref=nav_shopall_btn"

  def page_url
    visit @@SBDpage_url
    p "now on the Shop by Department page"
    expect(current_url).to include("ref=nav_shopall_btn")
    p "this is the URL #{current_url}"
    p "this is the page title #{title}"
  end

  def dpage
    page.find(".nav-a[href*='/ref=nav_shopall_btn']").click
  end

  def verify_text(text)
    sleep 2
    expect(page.has_content?(text)).to eql true
  end


end
