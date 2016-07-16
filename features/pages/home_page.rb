require 'capybara'
require 'capybara/dsl'
require 'rspec/matchers'
require File.dirname(__FILE__) + '/../lib/amazon_helper'


class HomePage
  include AmazonHelper
  include Capybara::DSL
  include RSpec::Matchers


  @@page_url = "https://www.amazon.co.uk"

  def load_page
    visit @@page_url
  end

  def verify_page_url
    expect(page.current_url).to include("amazon.co.uk")
  end

  def search(search_item)
    page.find("#twotabsearchtextbox").set(search_item)
    page.find(".nav-search-submit input[type='submit']").click
  end

  def verify_carousel
    expect(page).to have_css("#gw-desktop-herotator")
  end

  def verify_page
    expect(page.has_css?("a[href*='/ref=nav_logo']")).to eql true
    sleep 5
    expect(page.find(".desktop-row:first-child")).to_not eql false
  end


end
