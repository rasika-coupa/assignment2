module Demo1
  class SourcingPage < SitePrism::Page
    set_url '/quotes/requests'
    element :create_event,  :link, :href => "/quotes/requests/popup"
    element :event_type,    :link, :text => "RFI"
    element :event_name,    'input[name="quote_request[description]"]'
    element :dropdown,      'a[title="Show All Items"]'
    element :commodity ,    'input[id="quote_request_commodity_id_input"]'
    element :content_group, 'input[name="quote_request[business_group_ids][]"]'
    element :auction_stage, 'input[name="bidding_stage"]'
    #element :timeline , :link , :href => "http://localhost:3000/quotes/requests/39/edit?event=new#timeline_tab"
    element :start_time,    'input[id="quote_request_start_on_submit"]'
    #element :details, :link,:href => "http://localhost:3000/quotes/requests/39/edit?event=new#event_details_tab"
    element :add_new ,      'div', :text => 'Add New', :class => 'title'
    element :add_new_item , 'div[id="new_item"]'
    element :edit_item, 'div' , :text => 'x'
    element :item_name, 'input[id="name"]'
    element :item_quantity, 'input[id="quantity"]'
    element :item_commodity, 'input[id="commodity_name"]'
    element :base_price , 'input[id="base_price"]'
    element :save_event,    'a[id="save_event_btn"]'
    element :review_and_submit, 'a[id="review_and_submit"]'

    def sourcing
      create_event.click
      event_type.click
    end

    def create_rfi_event eventName , commodityName , itemName ,itemQuantity,itemCommodity,basePrice
      event_name.set eventName
      dropdown.click
      commodity.set(commodityName).native.send_keys :arrow_down , :return
      content_group.click
      auction_stage.check
      click_link('Timeline')
      start_time.check
      click_link('Details')
      add_new.hover
      add_new_item.click
      find('.item').click
      item_name.set itemName
      item_quantity.set itemQuantity
      item_commodity.set itemCommodity
      base_price.set basePrice
      #save_event.click
      review_and_submit.click
    end

    def create_RFI_event eventName , commodityName
      find('span',:text => 'Create Event').click
      event_type.click
      event_name.set eventName
      dropdown.click
      commodity.set(commodityName).native.send_keys :arrow_down , :return
      content_group.click
      auction_stage.check
    end
  end
end