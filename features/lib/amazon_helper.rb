
module AmazonHelper

  def from_homePage
    visit "/"
    page.driver.browser.manage.window.maximize
  end

  def searchFor(search_item)
    page.find('#twotabsearchtextbox').set(search_item)
    page.find(".nav-search-submit input[value='Go']").click
  end

  def results_returned(text_returned)
    text_returned=page.find('#s-result-count').text
    p text_returned
  end

  def itemsAddedToBasket(total)
    expect(page).to have_content('Added to Basket')
    expect(find('#huc-v2-order-row-with-divider #huc-v2-order-row-center')).to have_content("Basket subtotal (#{total} items):")
  end

  def add_another_item(search_item2, matching_result2, quantity2, total2)
    page.find('#nav-logo', Text: 'Amazon.co.uk Try Prime')
    searchFor(search_item2)
    verify_search_result(matching_result2)
    add_ItemToBasket(2,64)
    itemsAddedToBasket (total2)
  end


end

