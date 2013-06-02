class Api::PropertiesController < ApplicationController
  expose(:property) { Property.sampler }

  def index
    render json: property, each_serializer: ApiPropertiesSerializer
  end
end
