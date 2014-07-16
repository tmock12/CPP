class PropertiesController < ApplicationController
  before_filter :require_user, except: [:index, :for_sale, :for_lease, :show]
  respond_to :html

  expose(:property, model: Property, attributes: :property_params)
  expose(:deco_property) { decorate(property) }
  expose(:properties_for_sale) do
    Property.where(sale: true).filtered_by(params).page(params[:page]).per_page(10)
  end
  expose(:properties_for_lease) do
    Property.where("lease = true or sublease = true").filtered_by(params).page(params[:page]).per_page(10)
  end
  expose(:all_properties) { Property.all.page(params[:page]).per_page(10) }

  def create
    property.save
    respond_with property
  end
  alias update create

  def destroy
    property.destroy
    redirect_to :dashboard
  end

  protected

  def property_params
    params.require(:property).permit( :city, :description, :sale, :lease, :sublease, :price, :bank_owned,
      :size, :state, :street_1, :street_2, :title, :zip, :submarket,
      :attached_image, :attached_pdf, :latitude, :longitude, property_types: [], contact_ids: []
    )
  end

end
