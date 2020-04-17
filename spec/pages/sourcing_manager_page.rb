module Demo
  class SourcingManagerPage < SitePrism::Page
    set_url '/quotes/requests'
    element :create_event,  :link, :href => "/quotes/requests/popup"
    element :event_type,    :link, :text => "RFI"
  end
end