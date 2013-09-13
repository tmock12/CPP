Given(/^that property has the type "(.*?)"$/) do |property_type|
  @property.update_attribute(:property_types, [property_type])
end
