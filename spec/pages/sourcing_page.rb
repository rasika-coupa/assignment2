module Demo
  class SourcingPage < SitePrism::Page
    set_url '/quotes/requests'
    element :create_event, 'a[onclick="create_new_simple_event(); return false;"]'
    element :event_name, 'input[name="quote_request[description]"]'
    element :save_event,'a[id="save_event_btn"]'
    element :timeline, 'a[data-tab="timeline"]'
    def sourcing eventName
      create_event.click
      event_name.fill_in with: eventName
      save_event.click
      timeline.click
    end
  end
end