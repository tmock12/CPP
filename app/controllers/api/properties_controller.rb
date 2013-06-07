class Api::PropertiesController < ActionController::Base
  before_filter :set_access_control_headers
  expose(:property) { Property.sampler }

  def index
    render json: property, each_serializer: ApiPropertiesSerializer
  end

  def set_access_control_headers
    headers['Access-Control-Allow-Origin'] = 'http://www.cpprofessionals.com'
    headers['Access-Control-Request-Method'] = '*'
  end
end
