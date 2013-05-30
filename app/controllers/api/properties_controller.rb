class Api::PropertiesController < ApplicationController
  expose(:property) { Property.all.sample(3) }

  def index
    render json: property, each_serializer: ApiPropertiesSerializer
  end
end
