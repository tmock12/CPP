class UsersController < ApplicationController
  before_filter :require_user

  expose(:properties) { Property.sorted }
  expose(:property)

  private


end
