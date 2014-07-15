class UsersController < ApplicationController
  before_filter :require_user

  expose(:properties) { Property.sorted }
  expose(:property)
  expose(:contacts) { Contact.order(:name) }
end
