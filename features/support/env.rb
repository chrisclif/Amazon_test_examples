#require 'Rspec'
require 'capybara'
require 'selenium-webdriver'
require 'cucumber'
require 'capybara/cucumber'
require 'rspec/expectations'
require 'rspec/matchers'
require_relative 'app'
require File.dirname(__FILE__) + '/../lib/amazon_helper'
require File.dirname(__FILE__) + '/../pages/home_page'
require File.dirname(__FILE__) + '/../pages/shop_byDepartment'
require File.dirname(__FILE__) + '/../pages/plp'


include AmazonHelper




Capybara.configure do |config|
  config.app_host = "https://www.amazon.co.uk"
  config.default_driver = :selenium
end


if ENV['DRIVER'] == 'chrome'
  Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
  end
else
  Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :firefox)
  end
end



World(Capybara::DSL, AllPages)