class UsersController < ApplicationController
  before_filter :require_user

  expose(:properties) { Property.all }
  expose(:property)
end
