require 'pages/sourcing_manager_page'
module CreateEventHelper
  def create_event event_type
    @sourcingmanagerpage =Demo::SourcingManagerPage.new
    @sourcingmanagerpage.create_event.click
    @sourcingmanagerpage.event_type.click
  end
end

#element :event_type,:link, :text => "RFI"