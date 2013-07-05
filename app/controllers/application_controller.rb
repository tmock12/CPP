class ApplicationController < ActionController::Base
  include Authem::ControllerSupport
  protect_from_forgery

  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end
end
