Then(/^I should see "([^"]*)" as the name for line item (\d+)$/) do |expected_name, line_item|
  line_item_first_row_index = (line_item.to_i - 1) * 6
  line_item_first_row = @browser.table(:index => 0)[line_item_first_row_index]
  expect(line_item_first_row.text).to include expected_name
end

Then(/^I should see "([^"]*)" as the subtotal for line item (\d+)$/) do |expected_subtotal, line_item|
  line_item_first_row_index = (line_item.to_i - 1) * 6
  item_price_cell = @browser.table[line_item_first_row_index][3]
  expect(item_price_cell.text).to eql expected_subtotal
end

Then(/^I should see "([^"]*)" as the total for the cart$/) do |expected_total|
  total_cell = @browser.td(:class => 'total_cell')
  expect(total_cell.text).to eql expected_total
end

