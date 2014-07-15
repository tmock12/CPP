Given /^(?:|I )am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

Given /^(?:|I )should be on (.+)/ do |page_name|
  expect(URI.parse(current_url).path).to eq(path_to(page_name))
end

When /^(?:|I )fill in the following:$/ do |fields|
  fields.rows_hash.each do |name, value|
    step %{I fill in "#{name}" with "#{value}"}
  end
end

When /^(?:|I )fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end

When /^I press "(.*?)"$/ do |button|
  click_button(button)
end

Then /^I should see "(.*?)"$/ do |text|
  expect(page).to have_content(text)
end

Then /^I should see a link to "(.*?)"$/ do |text|
  find_link(text)
end

Then /^I should see the following:$/ do |table|
  table.rows.each do |row|
    row.each do |col|
      expect(page).to have_content(col)
    end
  end
end

Then /^I should not see "(.*?)"$/ do |text|
  expect(page).to_not have_content(text)
end

When /^I follow "(.*?)"$/ do |link|
  click_link(link)
end

When /^I select "(.*?)" from "(.*?)"$/ do |value, field|
  select(value, :from => field)
end

When /^I check "([^"]*)"$/ do |checkbox_label|
  check(checkbox_label)
end
