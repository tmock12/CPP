class PropertiesController < ApplicationController
  before_filter :require_user, except: [:index, :for_sale, :for_lease, :show]
  respond_to :html

  expose(:property)
  expose(:deco_property) { PropertyDecorator.new(property) }
  expose(:properties_for_sale) { Property.where(sale: true).decorate }
  expose(:properties_for_lease) { Property.where(lease: true).decorate }

  def create
    property.save
    respond_with property
  end
  alias update create

end
