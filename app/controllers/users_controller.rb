class UsersController < ApplicationController
  before_filter :require_user

  expose(:properties) { properties }
  expose(:property)

  private

  def properties
    sorted_properties_with_numbers + properties_without_numbers
  end

  def all_properties
    Property.order("LOWER(title)")
  end

  def properties_with_numbers
    all_properties.select { |p| p.title[/\A\d+/] }
  end

  def properties_without_numbers
    all_properties - properties_with_numbers
  end

  def sorted_properties_with_numbers
    properties_with_numbers.sort { |a, b| a.title.to_i <=> b.title.to_i }
  end
end
