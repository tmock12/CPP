class PropertiesController < ApplicationController
  before_filter :require_user, except: :index
  respond_to :html

  expose(:property)

  def create
    property.save
    respond_with property
  end
end
