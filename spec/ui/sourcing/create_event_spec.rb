require 'site_prism'
require 'pages/sourcing_manager_page.rb'
require 'extensions/helpers/ui/login_helper'
require 'extensions/helpers/ui/create_event_helper'
require 'pry-rails'

feature 'Coupa test', type: :feature do
  include Demo
  include LoginHelper
  include CreateEventHelper
  scenario 'Visit Sourcing Page' do
    @sourcingpage = Demo::SourcingManagerPage.new
    @sourcingpage.load
    login_to_website 'coupasupport' ,'CoupaSupport1'
    create_event 'RFI'
  end
end