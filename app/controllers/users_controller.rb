class UsersController < ApplicationController
  before_filter :require_user

  expose(:properties) { Property.order("LOWER(title)") }
  expose(:property)
end
