class ApplicationController < ActionController::Base
  authem_for :user
  protect_from_forgery

  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end

  private

  def deny_user_access
    redirect_to :admin
  end
end
