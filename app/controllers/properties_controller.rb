class PropertiesController < ApplicationController
  before_filter :require_user, except: [:index, :for_sale, :for_lease]
  respond_to :html

  expose(:property)
  expose(:properties_for_sale) { Property.where(sale: true) }
  expose(:properties_for_lease) { Property.where(lease: true) }

  def create
    property.save
    respond_with property
  end

end
