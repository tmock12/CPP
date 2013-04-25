class PropertiesController < ApplicationController
  before_filter :require_user, except: [:index, :for_sale, :for_lease, :show]
  respond_to :html

  expose(:property, model: Property)
  expose(:deco_property) { PropertyDecorator.new(property) }
  expose(:properties_for_sale) do
    Property.where(sale: true).page(params[:page]).per_page(10)
  end
  expose(:properties_for_lease) do
    Property.where(lease: true).page(params[:page]).per_page(10)
  end
  expose(:all_properties) { Property.order.page(params[:page]).per_page(10) }

  def create
    property.save
    respond_with property
  end
  alias update create

  def destroy
    property.destroy
    redirect_to :dashboard
  end

end
