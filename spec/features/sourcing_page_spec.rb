
require 'site_prism'
require 'pages/sourcing_page'
require 'extensions/helpers/ui/login_helper'
require 'pry-rails'

feature 'Coupa test', type: :feature do
  include Demo
  include LoginHelper
  before do
    @sourcingpage = Demo1::SourcingPage.new
    @sourcingpage.load
    login_to_website 'coupasupport' ,'CoupaSupport1'
  end
  scenario 'Visit Sourcing Page' do
    @sourcingpage = Demo1::SourcingPage.new
    @sourcingpage.load
    login_to_website 'coupasupport' ,'CoupaSupport1'
    @sourcingpage.sourcing
    @sourcingpage.create_rfi_event 'Demo Event','Computer Equipment','ballpoint pen','7','Office Supplies','10'
  end

  scenario 'create a RFI event' do
    @sourcingpage.create_RFI_event 'demo event','Computer Equipment'
  end
end