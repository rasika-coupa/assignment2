
require 'site_prism'
require 'pages/login_page'
require 'pages/sourcing_page'

feature 'Coupa test', type: :feature do
  include Demo
  scenario 'Visit Demoaut' do
    @sourcingpage = Demo::SourcingPage.new
    @sourcingpage.load
    @loginpage = Demo::LoginPage.new
    @loginpage.login_to_website
    @sourcingpage.sourcing 'demo'
  end
end