require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'

def capybara_server_setup
  Capybara.app_host = 'localhost:3000'
  Capybara.run_server = false
  Capybara.default_driver = :selenium_chrome
end
