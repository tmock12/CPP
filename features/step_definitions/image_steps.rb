Then /^I should see the image "(.+)"$/ do |image|
  expect(page).to have_xpath("//img[contains(@src, \"#{image}\")]")
end

When /^I attach the file at "([^\"]*)" to "([^\"]*)"$/ do |path, field|
  attach_file(field, path)
end
