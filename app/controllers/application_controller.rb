class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: %i[first_name last_name])
  end

  def signed_in_root_path(_resource)
    user_path
  end
end
